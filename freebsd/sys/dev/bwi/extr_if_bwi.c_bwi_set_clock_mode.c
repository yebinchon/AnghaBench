
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_regwin {int rw_rev; } ;
struct bwi_softc {int sc_cap; struct bwi_regwin sc_com_regwin; } ;
typedef enum bwi_clock_mode { ____Placeholder_bwi_clock_mode } bwi_clock_mode ;


 int BWI_CAP_CLKMODE ;
 int BWI_CLKSRC_CS_OSC ;
 int BWI_CLOCK_CTRL ;
 int BWI_CLOCK_CTRL_CLKSRC ;
 int BWI_CLOCK_CTRL_IGNPLL ;
 int BWI_CLOCK_CTRL_NODYN ;
 int BWI_CLOCK_CTRL_SLOW ;



 int BWI_REGWIN_EXIST (struct bwi_regwin*) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;
 int __SHIFTOUT (int,int ) ;
 int bwi_power_off (struct bwi_softc*,int ) ;
 int bwi_power_on (struct bwi_softc*,int ) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;

__attribute__((used)) static int
bwi_set_clock_mode(struct bwi_softc *sc, enum bwi_clock_mode clk_mode)
{
 struct bwi_regwin *old, *com;
 uint32_t clk_ctrl, clk_src;
 int error, pwr_off = 0;

 com = &sc->sc_com_regwin;
 if (!BWI_REGWIN_EXIST(com))
  return 0;

 if (com->rw_rev >= 10 || com->rw_rev < 6)
  return 0;





 if ((sc->sc_cap & BWI_CAP_CLKMODE) == 0)
  return 0;

 error = bwi_regwin_switch(sc, com, &old);
 if (error)
  return error;

 if (clk_mode == 129)
  bwi_power_on(sc, 0);

 clk_ctrl = CSR_READ_4(sc, BWI_CLOCK_CTRL);
 clk_src = __SHIFTOUT(clk_ctrl, BWI_CLOCK_CTRL_CLKSRC);

 switch (clk_mode) {
 case 129:
  clk_ctrl &= ~BWI_CLOCK_CTRL_SLOW;
  clk_ctrl |= BWI_CLOCK_CTRL_IGNPLL;
  break;
 case 128:
  clk_ctrl |= BWI_CLOCK_CTRL_SLOW;
  break;
 case 130:
  clk_ctrl &= ~(BWI_CLOCK_CTRL_SLOW |
         BWI_CLOCK_CTRL_IGNPLL |
         BWI_CLOCK_CTRL_NODYN);
  if (clk_src != BWI_CLKSRC_CS_OSC) {
   clk_ctrl |= BWI_CLOCK_CTRL_NODYN;
   pwr_off = 1;
  }
  break;
 }
 CSR_WRITE_4(sc, BWI_CLOCK_CTRL, clk_ctrl);

 if (pwr_off)
  bwi_power_off(sc, 0);

 return bwi_regwin_switch(sc, old, ((void*)0));
}
