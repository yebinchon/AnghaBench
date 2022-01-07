
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src_width; int dst_width; int block_len; int block_num; int dst_addr; int src_addr; int direction; int type; } ;
struct xdmatest_softc {int len; int* src; int * xchan; int dev; int dst_phys; int src_phys; TYPE_1__ req; scalar_t__* dst; int dst_dma_map; int dst_dma_tag; int src_dma_map; int src_dma_tag; int ih; int * xdma; } ;


 int BUS_DMASYNC_PREWRITE ;
 int XDMA_MEM_TO_MEM ;
 int XR_TYPE_PHYS_ADDR ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int xdma_begin (int *) ;
 int * xdma_channel_alloc (int *) ;
 int * xdma_ofw_get (int ,char*) ;
 int xdma_request (int *,int ,int ,int) ;
 int xdma_setup_intr (int *,int ,struct xdmatest_softc*,int *) ;
 int xdmatest_intr ;

__attribute__((used)) static int
xdmatest_test(struct xdmatest_softc *sc)
{
 int err;
 int i;


 sc->xdma = xdma_ofw_get(sc->dev, "test");
 if (sc->xdma == ((void*)0)) {
  device_printf(sc->dev, "Can't find xDMA controller.\n");
  return (-1);
 }


 sc->xchan = xdma_channel_alloc(sc->xdma);
 if (sc->xchan == ((void*)0)) {
  device_printf(sc->dev, "Can't alloc virtual DMA channel.\n");
  return (-1);
 }


 err = xdma_setup_intr(sc->xchan, xdmatest_intr, sc, &sc->ih);
 if (err) {
  device_printf(sc->dev, "Can't setup xDMA interrupt handler.\n");
  return (-1);
 }


 bus_dmamap_sync(sc->src_dma_tag, sc->src_dma_map, BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->dst_dma_tag, sc->dst_dma_map, BUS_DMASYNC_PREWRITE);


 for (i = 0; i < sc->len; i++) {
  sc->src[i] = (i & 0xff);
  sc->dst[i] = 0;
 }

 sc->req.type = XR_TYPE_PHYS_ADDR;
 sc->req.direction = XDMA_MEM_TO_MEM;
 sc->req.src_addr = sc->src_phys;
 sc->req.dst_addr = sc->dst_phys;
 sc->req.src_width = 4;
 sc->req.dst_width = 4;
 sc->req.block_len = sc->len;
 sc->req.block_num = 1;

 err = xdma_request(sc->xchan, sc->src_phys, sc->dst_phys, sc->len);
 if (err != 0) {
  device_printf(sc->dev, "Can't configure virtual channel.\n");
  return (-1);
 }


 xdma_begin(sc->xchan);

 return (0);
}
