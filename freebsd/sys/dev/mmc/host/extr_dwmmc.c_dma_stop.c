
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int dummy; } ;


 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_BMOD ;
 int SDMMC_BMOD_DE ;
 int SDMMC_BMOD_FB ;
 int SDMMC_BMOD_SWR ;
 int SDMMC_CTRL ;
 int SDMMC_CTRL_DMA_RESET ;
 int SDMMC_CTRL_USE_IDMAC ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;

__attribute__((used)) static int
dma_stop(struct dwmmc_softc *sc)
{
 int reg;

 reg = READ4(sc, SDMMC_CTRL);
 reg &= ~(SDMMC_CTRL_USE_IDMAC);
 reg |= (SDMMC_CTRL_DMA_RESET);
 WRITE4(sc, SDMMC_CTRL, reg);

 reg = READ4(sc, SDMMC_BMOD);
 reg &= ~(SDMMC_BMOD_DE | SDMMC_BMOD_FB);
 reg |= (SDMMC_BMOD_SWR);
 WRITE4(sc, SDMMC_BMOD, reg);

 return (0);
}
