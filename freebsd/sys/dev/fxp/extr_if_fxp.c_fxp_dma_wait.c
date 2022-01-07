
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fxp_softc {int dev; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int DELAY (int) ;
 int FXP_CB_STATUS_C ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*) ;
 int le16toh (int volatile) ;

__attribute__((used)) static void
fxp_dma_wait(struct fxp_softc *sc, volatile uint16_t *status,
    bus_dma_tag_t dmat, bus_dmamap_t map)
{
 int i;

 for (i = 10000; i > 0; i--) {
  DELAY(2);
  bus_dmamap_sync(dmat, map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  if ((le16toh(*status) & FXP_CB_STATUS_C) != 0)
   break;
 }
 if (i == 0)
  device_printf(sc->dev, "DMA timeout\n");
}
