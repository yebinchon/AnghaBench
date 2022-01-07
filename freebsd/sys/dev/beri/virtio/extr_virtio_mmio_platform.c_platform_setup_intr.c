
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_mmio_platform_softc {int ih; int * res; int pio_recv; scalar_t__ use_pio; void* ih_user; void* intr_handler; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int PIO_SETUP_IRQ (int ,int ,struct virtio_mmio_platform_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct virtio_mmio_platform_softc*,int *) ;
 struct virtio_mmio_platform_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int platform_intr ;

__attribute__((used)) static int
platform_setup_intr(device_t dev, device_t mmio_dev,
   void *intr_handler, void *ih_user)
{
 struct virtio_mmio_platform_softc *sc;
 int rid;

 sc = device_get_softc(dev);

 sc->intr_handler = intr_handler;
 sc->ih_user = ih_user;

 if (sc->use_pio) {
  PIO_SETUP_IRQ(sc->pio_recv, platform_intr, sc);
  return (0);
 }

 rid = 0;
 sc->res[0] = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
  RF_ACTIVE);
 if (!sc->res[0]) {
  device_printf(dev, "Can't allocate interrupt\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->res[0], INTR_TYPE_MISC | INTR_MPSAFE,
  ((void*)0), platform_intr, sc, &sc->ih)) {
  device_printf(dev, "Can't setup the interrupt\n");
  return (ENXIO);
 }

 return (0);
}
