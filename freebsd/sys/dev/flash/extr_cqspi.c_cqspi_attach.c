
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {struct cqspi_softc* ich_arg; int ich_func; } ;
struct cqspi_softc {TYPE_1__ config_intrhook; int * xchan_rx; int * xchan_tx; int dev; int ih_rx; int ih_tx; int * xdma_rx; int * xdma_tx; int ih; int * res; int sram_phys; int bsh; int bst; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CQSPI_LOCK_INIT (struct cqspi_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MAXPHYS ;
 int TX_QUEUE_SIZE ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct cqspi_softc*,int *) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int cqspi_delayed_attach ;
 int cqspi_init (struct cqspi_softc*) ;
 int cqspi_intr ;
 int cqspi_spec ;
 int cqspi_xdma_rx_intr ;
 int cqspi_xdma_tx_intr ;
 struct cqspi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_start (int ) ;
 void* xdma_channel_alloc (int *,scalar_t__) ;
 void* xdma_ofw_get (int ,char*) ;
 int xdma_prep_sg (int *,int ,int ,int,int,int ,int ,int ) ;
 int xdma_setup_intr (int *,int ,struct cqspi_softc*,int *) ;

__attribute__((used)) static int
cqspi_attach(device_t dev)
{
 struct cqspi_softc *sc;
 uint32_t caps;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, cqspi_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 sc->sram_phys = rman_get_start(sc->res[1]);


 if (bus_setup_intr(sc->dev, sc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), cqspi_intr, sc, &sc->ih)) {
  device_printf(sc->dev, "Unable to setup intr\n");
  return (ENXIO);
 }

 CQSPI_LOCK_INIT(sc);

 caps = 0;


 sc->xdma_tx = xdma_ofw_get(sc->dev, "tx");
 if (sc->xdma_tx == ((void*)0)) {
  device_printf(dev, "Can't find DMA controller.\n");
  return (ENXIO);
 }

 sc->xdma_rx = xdma_ofw_get(sc->dev, "rx");
 if (sc->xdma_rx == ((void*)0)) {
  device_printf(dev, "Can't find DMA controller.\n");
  return (ENXIO);
 }


 sc->xchan_tx = xdma_channel_alloc(sc->xdma_tx, caps);
 if (sc->xchan_tx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA channel.\n");
  return (ENXIO);
 }

 sc->xchan_rx = xdma_channel_alloc(sc->xdma_rx, caps);
 if (sc->xchan_rx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA channel.\n");
  return (ENXIO);
 }


 error = xdma_setup_intr(sc->xchan_tx, cqspi_xdma_tx_intr,
     sc, &sc->ih_tx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA interrupt handler.\n");
  return (ENXIO);
 }

 error = xdma_setup_intr(sc->xchan_rx, cqspi_xdma_rx_intr,
     sc, &sc->ih_rx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA interrupt handler.\n");
  return (ENXIO);
 }

 xdma_prep_sg(sc->xchan_tx, TX_QUEUE_SIZE, MAXPHYS, 8, 16, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR);
 xdma_prep_sg(sc->xchan_rx, TX_QUEUE_SIZE, MAXPHYS, 8, 16, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR);

 cqspi_init(sc);

 sc->config_intrhook.ich_func = cqspi_delayed_attach;
 sc->config_intrhook.ich_arg = sc;
 if (config_intrhook_establish(&sc->config_intrhook) != 0) {
  device_printf(dev, "config_intrhook_establish failed\n");
  return (ENOMEM);
 }

 return (0);
}
