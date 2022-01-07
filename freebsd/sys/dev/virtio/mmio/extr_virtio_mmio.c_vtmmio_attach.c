
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int * vtmmio_child_dev; int * res; int * dev; } ;
typedef int * device_t ;


 int ENOMEM ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int VIRTIO_CONFIG_STATUS_ACK ;
 int VIRTIO_CONFIG_STATUS_FAILED ;
 int bus_alloc_resource_any (int *,int ,int*,int ) ;
 int * device_add_child (int *,int *,int) ;
 struct vtmmio_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int vtmmio_detach (int *) ;
 int vtmmio_probe_and_attach_child (struct vtmmio_softc*) ;
 int vtmmio_reset (struct vtmmio_softc*) ;
 int vtmmio_set_status (int *,int ) ;

int
vtmmio_attach(device_t dev)
{
 struct vtmmio_softc *sc;
 device_t child;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->res[0] = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
   RF_ACTIVE);
 if (!sc->res[0]) {
  device_printf(dev, "Cannot allocate memory window.\n");
  return (ENXIO);
 }

 vtmmio_reset(sc);


 vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_ACK);

 if ((child = device_add_child(dev, ((void*)0), -1)) == ((void*)0)) {
  device_printf(dev, "Cannot create child device.\n");
  vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_FAILED);
  vtmmio_detach(dev);
  return (ENOMEM);
 }

 sc->vtmmio_child_dev = child;
 vtmmio_probe_and_attach_child(sc);

 return (0);
}
