
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_invalid; int sc_dmat; void* sc_io1h; void* sc_io1t; void* sc_io0h; void* sc_io0t; int sc_dev; } ;
struct mwl_pci_softc {int * sc_sr0; int * sc_sr1; int * sc_irq; int sc_ih; struct mwl_softc sc_sc; } ;
typedef int device_t ;


 int BS_BAR0 ;
 int BS_BAR1 ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MWL_LOCK_DESTROY (struct mwl_softc*) ;
 int MWL_LOCK_INIT (struct mwl_softc*) ;
 int MWL_TXDESC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct mwl_softc*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 struct mwl_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mwl_attach (int ,struct mwl_softc*) ;
 int mwl_intr ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
mwl_pci_attach(device_t dev)
{
 struct mwl_pci_softc *psc = device_get_softc(dev);
 struct mwl_softc *sc = &psc->sc_sc;
 int rid, error = ENXIO;

 sc->sc_dev = dev;

 pci_enable_busmaster(dev);




 rid = BS_BAR0;
 psc->sc_sr0 = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
         RF_ACTIVE);
 if (psc->sc_sr0 == ((void*)0)) {
  device_printf(dev, "cannot map BAR0 register space\n");
  goto bad;
 }
 rid = BS_BAR1;
 psc->sc_sr1 = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
         RF_ACTIVE);
 if (psc->sc_sr1 == ((void*)0)) {
  device_printf(dev, "cannot map BAR1 register space\n");
  goto bad1;
 }
 sc->sc_invalid = 1;




 rid = 0;
 psc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
          RF_SHAREABLE|RF_ACTIVE);
 if (psc->sc_irq == ((void*)0)) {
  device_printf(dev, "could not map interrupt\n");
  goto bad2;
 }
 if (bus_setup_intr(dev, psc->sc_irq,
      INTR_TYPE_NET | INTR_MPSAFE,
      ((void*)0), mwl_intr, sc, &psc->sc_ih)) {
  device_printf(dev, "could not establish interrupt\n");
  goto bad3;
 }




 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          BUS_SPACE_MAXSIZE,
          MWL_TXDESC,
          BUS_SPACE_MAXSIZE,
          0,
          ((void*)0),
          ((void*)0),
          &sc->sc_dmat)) {
  device_printf(dev, "cannot allocate DMA tag\n");
  goto bad4;
 }




 MWL_LOCK_INIT(sc);
 sc->sc_io0t = rman_get_bustag(psc->sc_sr0);
 sc->sc_io0h = rman_get_bushandle(psc->sc_sr0);
 sc->sc_io1t = rman_get_bustag(psc->sc_sr1);
 sc->sc_io1h = rman_get_bushandle(psc->sc_sr1);
 if (mwl_attach(pci_get_device(dev), sc) == 0)
  return (0);

 MWL_LOCK_DESTROY(sc);
 bus_dma_tag_destroy(sc->sc_dmat);
bad4:
 bus_teardown_intr(dev, psc->sc_irq, psc->sc_ih);
bad3:
 bus_release_resource(dev, SYS_RES_IRQ, 0, psc->sc_irq);
bad2:
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR1, psc->sc_sr1);
bad1:
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR0, psc->sc_sr0);
bad:
 return (error);
}
