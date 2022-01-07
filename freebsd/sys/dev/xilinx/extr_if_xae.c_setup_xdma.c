
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;
struct xae_softc {int * xchan_rx; int * xchan_tx; int dev; int ih_rx; int * xdma_rx; int ih_tx; int * xdma_tx; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int MCLBYTES ;
 int RX_QUEUE_SIZE ;
 int TX_QUEUE_SIZE ;
 int device_printf (int ,char*) ;
 int xae_xdma_rx_intr ;
 int xae_xdma_tx_intr ;
 int xchan_set_memory (int *,int *) ;
 void* xdma_channel_alloc (int *,int ) ;
 int * xdma_get_memory (int ) ;
 void* xdma_ofw_get (int ,char*) ;
 int xdma_prep_sg (int *,int ,int ,int,int,int ,int ,int ) ;
 int xdma_setup_intr (int *,int ,struct xae_softc*,int *) ;

__attribute__((used)) static int
setup_xdma(struct xae_softc *sc)
{
 device_t dev;
 vmem_t *vmem;
 int error;

 dev = sc->dev;


 sc->xdma_tx = xdma_ofw_get(sc->dev, "tx");
 if (sc->xdma_tx == ((void*)0)) {
  device_printf(dev, "Could not find DMA controller.\n");
  return (ENXIO);
 }

 sc->xdma_rx = xdma_ofw_get(sc->dev, "rx");
 if (sc->xdma_rx == ((void*)0)) {
  device_printf(dev, "Could not find DMA controller.\n");
  return (ENXIO);
 }


 sc->xchan_tx = xdma_channel_alloc(sc->xdma_tx, 0);
 if (sc->xchan_tx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA TX channel.\n");
  return (ENXIO);
 }


 error = xdma_setup_intr(sc->xchan_tx,
     xae_xdma_tx_intr, sc, &sc->ih_tx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA TX interrupt handler.\n");
  return (ENXIO);
 }


 sc->xchan_rx = xdma_channel_alloc(sc->xdma_rx, 0);
 if (sc->xchan_rx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA RX channel.\n");
  return (ENXIO);
 }


 error = xdma_setup_intr(sc->xchan_rx,
     xae_xdma_rx_intr, sc, &sc->ih_rx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA RX interrupt handler.\n");
  return (ENXIO);
 }


 vmem = xdma_get_memory(dev);
 if (vmem) {
  xchan_set_memory(sc->xchan_tx, vmem);
  xchan_set_memory(sc->xchan_rx, vmem);
 }

 xdma_prep_sg(sc->xchan_tx,
     TX_QUEUE_SIZE,
     MCLBYTES,
     8,
     16,
     0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR);

 xdma_prep_sg(sc->xchan_rx,
     RX_QUEUE_SIZE,
     MCLBYTES,
     1,
     16,
     0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR);

 return (0);
}
