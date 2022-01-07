
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; int len; int data; } ;
struct mmc_command {struct mmc_data* data; } ;
struct dwmmc_softc {int fifo_depth; int buf_map; int buf_tag; int desc_map; int desc_tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int DEF_MSIZE ;
 int MMC_DATA_WRITE ;
 int READ4 (struct dwmmc_softc*,int ) ;
 int SDMMC_BMOD ;
 int SDMMC_BMOD_DE ;
 int SDMMC_BMOD_FB ;
 int SDMMC_CTRL ;
 int SDMMC_CTRL_DMA_ENABLE ;
 int SDMMC_CTRL_USE_IDMAC ;
 int SDMMC_FIFOTH ;
 int SDMMC_FIFOTH_MSIZE_S ;
 int SDMMC_FIFOTH_RXWMARK_S ;
 int SDMMC_FIFOTH_TXWMARK_S ;
 int SDMMC_INTMASK ;
 int SDMMC_INTMASK_RXDR ;
 int SDMMC_INTMASK_TXDR ;
 int SDMMC_PLDMND ;
 int WRITE4 (struct dwmmc_softc*,int ,int) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct dwmmc_softc*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int dwmmc_ring_setup ;
 int panic (char*) ;
 int wmb () ;

__attribute__((used)) static int
dma_prepare(struct dwmmc_softc *sc, struct mmc_command *cmd)
{
 struct mmc_data *data;
 int err;
 int reg;

 data = cmd->data;

 reg = READ4(sc, SDMMC_INTMASK);
 reg &= ~(SDMMC_INTMASK_TXDR | SDMMC_INTMASK_RXDR);
 WRITE4(sc, SDMMC_INTMASK, reg);

 err = bus_dmamap_load(sc->buf_tag, sc->buf_map,
  data->data, data->len, dwmmc_ring_setup,
  sc, BUS_DMA_NOWAIT);
 if (err != 0)
  panic("dmamap_load failed\n");


 bus_dmamap_sync(sc->desc_tag, sc->desc_map,
     BUS_DMASYNC_PREWRITE);

 if (data->flags & MMC_DATA_WRITE)
  bus_dmamap_sync(sc->buf_tag, sc->buf_map,
   BUS_DMASYNC_PREWRITE);
 else
  bus_dmamap_sync(sc->buf_tag, sc->buf_map,
   BUS_DMASYNC_PREREAD);

 reg = (DEF_MSIZE << SDMMC_FIFOTH_MSIZE_S);
 reg |= ((sc->fifo_depth / 2) - 1) << SDMMC_FIFOTH_RXWMARK_S;
 reg |= (sc->fifo_depth / 2) << SDMMC_FIFOTH_TXWMARK_S;

 WRITE4(sc, SDMMC_FIFOTH, reg);
 wmb();

 reg = READ4(sc, SDMMC_CTRL);
 reg |= (SDMMC_CTRL_USE_IDMAC | SDMMC_CTRL_DMA_ENABLE);
 WRITE4(sc, SDMMC_CTRL, reg);
 wmb();

 reg = READ4(sc, SDMMC_BMOD);
 reg |= (SDMMC_BMOD_DE | SDMMC_BMOD_FB);
 WRITE4(sc, SDMMC_BMOD, reg);


 WRITE4(sc, SDMMC_PLDMND, 1);

 return (0);
}
