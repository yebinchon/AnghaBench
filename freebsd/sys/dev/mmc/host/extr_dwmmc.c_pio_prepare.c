
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {scalar_t__ xfer_len; } ;
struct mmc_command {struct mmc_data* data; } ;
struct dwmmc_softc {int fifo_depth; } ;


 int DEF_MSIZE ;
 int SDMMC_FIFOTH ;
 int SDMMC_FIFOTH_MSIZE_S ;
 int SDMMC_FIFOTH_RXWMARK_S ;
 int SDMMC_FIFOTH_TXWMARK_S ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int
pio_prepare(struct dwmmc_softc *sc, struct mmc_command *cmd)
{
 struct mmc_data *data;
 int reg;

 data = cmd->data;
 data->xfer_len = 0;

 reg = (DEF_MSIZE << SDMMC_FIFOTH_MSIZE_S);
 reg |= ((sc->fifo_depth / 2) - 1) << SDMMC_FIFOTH_RXWMARK_S;
 reg |= (sc->fifo_depth / 2) << SDMMC_FIFOTH_TXWMARK_S;

 WRITE4(sc, SDMMC_FIFOTH, reg);
 wmb();

 return (0);
}
