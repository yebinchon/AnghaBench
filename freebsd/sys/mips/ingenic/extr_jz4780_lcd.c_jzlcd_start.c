
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jzlcd_softc {int dummy; } ;


 int LCDCTRL ;
 int LCDCTRL_DIS ;
 int LCDCTRL_ENA ;
 int LCDOSDS ;
 int LCDSTATE ;
 int LCD_READ (struct jzlcd_softc*,int ) ;
 int LCD_WRITE (struct jzlcd_softc*,int ,int ) ;

__attribute__((used)) static void
jzlcd_start(struct jzlcd_softc *sc)
{
 uint32_t ctrl;


 LCD_WRITE(sc, LCDSTATE, 0);
 LCD_WRITE(sc, LCDOSDS, 0);

 ctrl = LCD_READ(sc, LCDCTRL);
 ctrl |= LCDCTRL_ENA;
 ctrl &= ~LCDCTRL_DIS;
 LCD_WRITE(sc, LCDCTRL, ctrl);
}
