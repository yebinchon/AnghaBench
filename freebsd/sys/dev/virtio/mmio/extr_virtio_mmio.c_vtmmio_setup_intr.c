
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int ih; int * res; int dev; int * platform; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int VIRTIO_MMIO_SETUP_INTR (int *,int ,int ,struct vtmmio_softc*) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct vtmmio_softc*,int *) ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int vtmmio_vq_intr ;

__attribute__((used)) static int
vtmmio_setup_intr(device_t dev, enum intr_type type)
{
 struct vtmmio_softc *sc;
 int rid;
 int err;

 sc = device_get_softc(dev);

 if (sc->platform != ((void*)0)) {
  err = VIRTIO_MMIO_SETUP_INTR(sc->platform, sc->dev,
     vtmmio_vq_intr, sc);
  if (err == 0) {

   return (0);
  }
 }

 rid = 0;
 sc->res[1] = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
  RF_ACTIVE);
 if (!sc->res[1]) {
  device_printf(dev, "Can't allocate interrupt\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
  ((void*)0), vtmmio_vq_intr, sc, &sc->ih)) {
  device_printf(dev, "Can't setup the interrupt\n");
  return (ENXIO);
 }

 return (0);
}
