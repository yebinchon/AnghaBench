
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int dev; } ;


 int DELAY (int) ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_CTRL ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
dwmmc_ctrl_reset(struct dwmmc_softc *sc, int reset_bits)
{
 int reg;
 int i;

 reg = READ4(sc, SDMMC_CTRL);
 reg |= (reset_bits);
 WRITE4(sc, SDMMC_CTRL, reg);


 for (i = 0; i < 100; i++) {
  if (!(READ4(sc, SDMMC_CTRL) & reset_bits))
   return (0);
  DELAY(10);
 }

 device_printf(sc->dev, "Reset failed\n");

 return (1);
}
