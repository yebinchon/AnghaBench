
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int BLACK ;
 int DKGREY ;
 int LTGREY ;
 int M_FILL ;
 int M_NOFILL ;
 int SOLID ;
 int WHITE ;
 int XOR ;
 int box (int,int,int,int,int ) ;
 int circle (int,int,int,int ) ;
 int color (int,int,int ) ;
 int getpix (int,int) ;
 int gotogxy (int,int) ;
 int gprintf (char*,int ) ;
 int line (int ,int,int,int) ;
 int plot_point (int,int) ;

void main(void)
{
    UBYTE a,b,c,d,e;
    c=0;

    for (a=0; a<=15; a++) {
 for (b=0; b<=15; b++) {
     gotogxy(b,a);
     d=a/4;
     e=b/4;
     if (d==e) {
  d=3-e;
     }
     color(d,e,SOLID);
     gprintf("%c",c++);
 }
    }


    color(LTGREY,WHITE,SOLID);
    circle(140,20,15,M_FILL);
    color(BLACK,WHITE,SOLID);
    circle(140,20,10,M_NOFILL);
    color(DKGREY,WHITE,XOR);
    circle(120,40,30,M_FILL);
    line(0,0,159,143);
    color(BLACK,LTGREY,SOLID);
    box(0,130,40,143,M_NOFILL);
    box(50,130,90,143,M_FILL);


    for (c=0; c<=143; c++) {
 for (b=0; b<=142; b++) {
     for (a=0; a<=159; a++) {
  color(getpix(a,b+1),WHITE,SOLID);
  plot_point(a,b);
     }
     color(WHITE,WHITE,SOLID);
 }
 line(0,143,159,143);
    }
}
