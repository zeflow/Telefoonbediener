$fn=10;
servoposx=105;
servoposy=50;
servoposz=30;

difference(){
union(){
    translate([-20,70,10]) color("Black") cube([100,60,70]);

}
    union(){
        translate([10,60,30]) #cube([50,50,60]);            

    }
}

        translate([servoposy,servoposx,servoposz]) rotate([90,0,270]) #9g_motor()
        translate([servoposy+5,servoposx-5,servoposz+12.5]) rotate([90,0,270]) #9g_motor();
        translate([servoposy+10,servoposx,servoposz+25]) rotate([90,0,270]) #9g_motor();
        translate([servoposy+15,servoposx-5,servoposz+37.5]) rotate([90,0,270]) #9g_motor();


translate([-20,-11,35]) color("Black") cube([100,5,70-35+10]);
translate([70,135,70]) rotate([90,00,0]) color("Grey") cylinder(r=2,h=150);
translate([-10,135,70]) rotate([90,00,0]) color("Grey") cylinder(r=2,h=150);


translate([25,68,37]) color("White")  armpje(4,30,10,15);
telefoon();


module armpje(dikte,lengte,hoogteservo,hoogtepootje){
    union(){
          translate([dikte,0,21]) rotate([270,0,0]) cube([dikte,3,lengte]);    
          translate([dikte,0,21]) rotate([180,0,0]) cube([dikte,3,hoogtepootje]);
          translate([dikte,lengte,21]) rotate([180,0,0]) cube([dikte,3,hoogteservo]);        
    }
}

module armpjerond(dikte,lengte){
    union(){
        translate([dikte,0,21]) rotate([0,180,0]) cube([dikte,3,lengte]);    
        translate([0,19,-10]) cube([dikte,3,10]); 
        difference(){
            rotate([0,90,0]) cylinder(r=22,h=dikte);
            rotate([-1,90,0]) cylinder(r=19,h=10);
            translate([-1,-22,0]) cube([10,22,22]);
            translate([-10,-32,-72]) cube([20,54,72]);
        }
        
    }
}


module telefoon(){
    //telefoon body
    minkowski() {
        cube([170,75,20]);
        cylinder(r=7,h=20);
    }
    //telefon scherm
    color("green") translate([20,10,-1]) cube([100,50,42]);
    //knopjes
    translate([30,70,00]) color("Blue") cylinder(r=2,h=45);
    translate([35,75,00]) color("Blue") cylinder(r=2,h=45);
    translate([40,70,00]) color("Blue") cylinder(r=2,h=45);
    translate([45,75,00]) color("Blue") cylinder(r=2,h=45);
    translate([50,70,00]) color("Blue") cylinder(r=2,h=45);
    translate([55,75,00]) color("Blue") cylinder(r=2,h=45);
    translate([60,70,00]) color("Blue") cylinder(r=2,h=45);
    translate([65,75,00]) color("Blue") cylinder(r=2,h=45);
    translate([70,70,00]) color("Blue") cylinder(r=2,h=45);
    translate([75,75,00]) color("Blue") cylinder(r=2,h=45);
}



module 9g_motor(){
	difference(){			
		union(){
			color("Blue") cube([23,12.5,22], center=true);
			color("Blue") translate([0,0,5]) cube([32,12,2], center=true);
			color("Blue") translate([5.5,0,2.75]) cylinder(r=6, h=25.75, $fn=20, center=true);
			color("Blue") translate([-.5,0,2.75]) cylinder(r=1, h=25.75, $fn=20, center=true);
			color("Blue") translate([-1,0,2.75]) cube([5,5.6,24.5], center=true);		
			color("white") translate([5.5,0,3.65]) cylinder(r=2.35, h=29.25, $fn=20, center=true);				
		}
		translate([10,0,-11]) rotate([0,-30,0]) cube([8,13,4], center=true);
		for ( hole = [14,-14] ){
			translate([hole,0,5]) cylinder(r=2.2, h=4, $fn=20, center=true);
		}	
	}
}
