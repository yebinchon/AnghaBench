
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int bus_hz; int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_CLKDIV ;
 int SDMMC_CLKENA ;
 int SDMMC_CLKENA_CCLK_EN ;
 int SDMMC_CLKENA_LP ;
 int SDMMC_CLKSRC ;
 int SDMMC_CMD ;
 int SDMMC_CMD_START ;
 int SDMMC_CMD_UPD_CLK_ONLY ;
 int SDMMC_CMD_WAIT_PRVDATA ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
dwmmc_setup_bus(struct dwmmc_softc *sc, int freq)
{
 int tout;
 int div;

 if (freq == 0) {
  WRITE4(sc, SDMMC_CLKENA, 0);
  WRITE4(sc, SDMMC_CMD, (SDMMC_CMD_WAIT_PRVDATA |
   SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START));

  tout = 1000;
  do {
   if (tout-- < 0) {
    device_printf(sc->dev, "Failed update clk\n");
    return (1);
   }
  } while (READ4(sc, SDMMC_CMD) & SDMMC_CMD_START);

  return (0);
 }

 WRITE4(sc, SDMMC_CLKENA, 0);
 WRITE4(sc, SDMMC_CLKSRC, 0);

 div = (sc->bus_hz != freq) ? DIV_ROUND_UP(sc->bus_hz, 2 * freq) : 0;

 WRITE4(sc, SDMMC_CLKDIV, div);
 WRITE4(sc, SDMMC_CMD, (SDMMC_CMD_WAIT_PRVDATA |
   SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START));

 tout = 1000;
 do {
  if (tout-- < 0) {
   device_printf(sc->dev, "Failed to update clk");
   return (1);
  }
 } while (READ4(sc, SDMMC_CMD) & SDMMC_CMD_START);

 WRITE4(sc, SDMMC_CLKENA, (SDMMC_CLKENA_CCLK_EN | SDMMC_CLKENA_LP));
 WRITE4(sc, SDMMC_CMD, SDMMC_CMD_WAIT_PRVDATA |
   SDMMC_CMD_UPD_CLK_ONLY | SDMMC_CMD_START);

 tout = 1000;
 do {
  if (tout-- < 0) {
   device_printf(sc->dev, "Failed to enable clk\n");
   return (1);
  }
 } while (READ4(sc, SDMMC_CMD) & SDMMC_CMD_START);

 return (0);
}
