
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jzlcd_softc {int dummy; } ;


 int DELAY (int) ;
 int LCDCTRL ;
 int LCDCTRL_DIS ;
 int LCDCTRL_ENA ;
 int LCDSTATE ;
 int LCDSTATE_LDD ;
 int LCD_READ (struct jzlcd_softc*,int ) ;
 int LCD_WRITE (struct jzlcd_softc*,int ,int) ;

__attribute__((used)) static void
jzlcd_stop(struct jzlcd_softc *sc)
{
 uint32_t ctrl;

 ctrl = LCD_READ(sc, LCDCTRL);
 if ((ctrl & LCDCTRL_ENA) != 0) {

  ctrl |= LCDCTRL_DIS;
  LCD_WRITE(sc, LCDCTRL, ctrl);
  while ((LCD_READ(sc, LCDSTATE) & LCDSTATE_LDD) == 0)
   DELAY(100);
 }

 LCD_WRITE(sc, LCDSTATE, LCD_READ(sc, LCDSTATE) & ~LCDSTATE_LDD);
}
