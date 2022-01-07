
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int * vtpci_child_dev; int vtpci_flags; int * vtpci_msix_res; int * vtpci_res; int * vtpci_dev; } ;
typedef int * device_t ;


 int ENOMEM ;
 int ENXIO ;
 int PCIR_BAR (int) ;
 int PCIY_MSI ;
 int PCIY_MSIX ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int VIRTIO_CONFIG_STATUS_ACK ;
 int VIRTIO_CONFIG_STATUS_FAILED ;
 int VTPCI_FLAG_NO_MSI ;
 int VTPCI_FLAG_NO_MSIX ;
 void* bus_alloc_resource_any (int *,int ,int*,int ) ;
 int * device_add_child (int *,int *,int) ;
 struct vtpci_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int pci_enable_busmaster (int *) ;
 scalar_t__ pci_find_cap (int *,int ,int *) ;
 int vtpci_detach (int *) ;
 int vtpci_probe_and_attach_child (struct vtpci_softc*) ;
 int vtpci_reset (struct vtpci_softc*) ;
 int vtpci_set_status (int *,int ) ;

__attribute__((used)) static int
vtpci_attach(device_t dev)
{
 struct vtpci_softc *sc;
 device_t child;
 int rid;

 sc = device_get_softc(dev);
 sc->vtpci_dev = dev;

 pci_enable_busmaster(dev);

 rid = PCIR_BAR(0);
 sc->vtpci_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
     RF_ACTIVE);
 if (sc->vtpci_res == ((void*)0)) {
  device_printf(dev, "cannot map I/O space\n");
  return (ENXIO);
 }

 if (pci_find_cap(dev, PCIY_MSI, ((void*)0)) != 0)
  sc->vtpci_flags |= VTPCI_FLAG_NO_MSI;

 if (pci_find_cap(dev, PCIY_MSIX, ((void*)0)) == 0) {
  rid = PCIR_BAR(1);
  sc->vtpci_msix_res = bus_alloc_resource_any(dev,
      SYS_RES_MEMORY, &rid, RF_ACTIVE);
 }

 if (sc->vtpci_msix_res == ((void*)0))
  sc->vtpci_flags |= VTPCI_FLAG_NO_MSIX;

 vtpci_reset(sc);


 vtpci_set_status(dev, VIRTIO_CONFIG_STATUS_ACK);

 if ((child = device_add_child(dev, ((void*)0), -1)) == ((void*)0)) {
  device_printf(dev, "cannot create child device\n");
  vtpci_set_status(dev, VIRTIO_CONFIG_STATUS_FAILED);
  vtpci_detach(dev);
  return (ENOMEM);
 }

 sc->vtpci_child_dev = child;
 vtpci_probe_and_attach_child(sc);

 return (0);
}
