
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int font_t ;


 int DKGREY ;
 int M_NO_SCROLL ;
 int SOLID ;
 int WHITE ;
 int color (int ,int ,int ) ;
 int font_ibm ;
 int font_init () ;
 int font_italic ;
 int font_load (int ) ;
 int font_min ;
 int font_set (int ) ;
 int get_mode () ;
 int mode (int) ;
 int printf (char*,...) ;

void main(void)
{
    font_t ibm_font, italic_font, min_font;
    int i;


    font_init();


    ibm_font = font_load(font_ibm);
    italic_font = font_load(font_italic);


    color(WHITE, DKGREY, SOLID);

    min_font = font_load(font_min);


    mode(get_mode() | M_NO_SCROLL);




    font_set(ibm_font);
    printf("Font demo.\n\n");

    printf("IBM Font #!?123\n");


    font_set(italic_font);
    for (i=1; i!=5; i++) {
 printf("In italics, line %u\n", i);
    }


    font_set(min_font);
    printf("Minimal 36 tile font\n");


    font_set(ibm_font);
    printf("\nDone!");
}
