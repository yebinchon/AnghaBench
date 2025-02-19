
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_ring_data {scalar_t__ ring_bus_addr; scalar_t__ head_wb_bus_addr; void* last_head; } ;
struct mgb_softc {int dev; struct mgb_ring_data rx_ring_data; } ;


 void* CSR_READ_REG (struct mgb_softc*,int ) ;
 int CSR_TRANSLATE_ADDR_HIGH32 (scalar_t__) ;
 int CSR_TRANSLATE_ADDR_LOW32 (scalar_t__) ;
 int CSR_WRITE_REG (struct mgb_softc*,int ,int) ;
 int DMAC_RESET ;
 int DMAC_START ;
 int FCT_ENABLE ;
 int FCT_RESET ;
 int KASSERT (int ,char*) ;
 int MGB_DMAC_RX_START ;
 int MGB_DMAC_STATE_IS_INITIAL (struct mgb_softc*,int ,int) ;
 int MGB_DMA_HEAD_WB_ENBL ;
 int MGB_DMA_RING_LEN_MASK ;
 int MGB_DMA_RING_PAD_0 ;
 int MGB_DMA_RING_PAD_MASK ;
 int MGB_DMA_RING_SIZE ;
 int MGB_DMA_RX_BASE_H (int) ;
 int MGB_DMA_RX_BASE_L (int) ;
 int MGB_DMA_RX_CONFIG0 (int) ;
 int MGB_DMA_RX_CONFIG1 (int) ;
 int MGB_DMA_RX_HEAD (int) ;
 int MGB_DMA_RX_HEAD_WB_H (int) ;
 int MGB_DMA_RX_HEAD_WB_L (int) ;
 int MGB_FCT_RX_CTL ;
 int device_printf (int ,char*) ;
 int mgb_dmac_control (struct mgb_softc*,int ,int,int ) ;
 int mgb_fct_control (struct mgb_softc*,int ,int,int ) ;

__attribute__((used)) static int
mgb_dma_rx_ring_init(struct mgb_softc *sc, int channel)
{
 struct mgb_ring_data *rdata;
 int ring_config, error = 0;

 rdata = &sc->rx_ring_data;
 mgb_dmac_control(sc, MGB_DMAC_RX_START, 0, DMAC_RESET);
 KASSERT(MGB_DMAC_STATE_IS_INITIAL(sc, MGB_DMAC_RX_START, channel),
     ("Trying to init channels when not in init state\n"));


 if (rdata->ring_bus_addr == 0) {
  device_printf(sc->dev, "Invalid ring bus addr.\n");
  goto fail;
 }

 CSR_WRITE_REG(sc, MGB_DMA_RX_BASE_H(channel),
     CSR_TRANSLATE_ADDR_HIGH32(rdata->ring_bus_addr));
 CSR_WRITE_REG(sc, MGB_DMA_RX_BASE_L(channel),
     CSR_TRANSLATE_ADDR_LOW32(rdata->ring_bus_addr));


 if (rdata->head_wb_bus_addr == 0) {
  device_printf(sc->dev, "Invalid head wb bus addr.\n");
  goto fail;
 }
 CSR_WRITE_REG(sc, MGB_DMA_RX_HEAD_WB_H(channel),
     CSR_TRANSLATE_ADDR_HIGH32(rdata->head_wb_bus_addr));
 CSR_WRITE_REG(sc, MGB_DMA_RX_HEAD_WB_L(channel),
     CSR_TRANSLATE_ADDR_LOW32(rdata->head_wb_bus_addr));


 CSR_WRITE_REG(sc, MGB_DMA_RX_CONFIG0(channel), MGB_DMA_HEAD_WB_ENBL);

 ring_config = CSR_READ_REG(sc, MGB_DMA_RX_CONFIG1(channel));

 ring_config &= ~MGB_DMA_RING_LEN_MASK;
 ring_config |= (MGB_DMA_RING_SIZE & MGB_DMA_RING_LEN_MASK);

 ring_config &= ~MGB_DMA_RING_PAD_MASK;
 ring_config |= (MGB_DMA_RING_PAD_0 & MGB_DMA_RING_PAD_MASK);

 CSR_WRITE_REG(sc, MGB_DMA_RX_CONFIG1(channel), ring_config);

 rdata->last_head = CSR_READ_REG(sc, MGB_DMA_RX_HEAD(channel));

 mgb_fct_control(sc, MGB_FCT_RX_CTL, channel, FCT_RESET);
 if (error != 0) {
  device_printf(sc->dev, "Failed to reset RX FCT.\n");
  goto fail;
 }
 mgb_fct_control(sc, MGB_FCT_RX_CTL, channel, FCT_ENABLE);
 if (error != 0) {
  device_printf(sc->dev, "Failed to enable RX FCT.\n");
  goto fail;
 }
 mgb_dmac_control(sc, MGB_DMAC_RX_START, channel, DMAC_START);
 if (error != 0)
  device_printf(sc->dev, "Failed to start RX DMAC.\n");
fail:
 return (error);
}
