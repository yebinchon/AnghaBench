
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int * platform; } ;
typedef int device_t ;


 int VIRTIO_MMIO_POLL (int *) ;
 struct vtmmio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
vtmmio_poll(device_t dev)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 if (sc->platform != ((void*)0))
  VIRTIO_MMIO_POLL(sc->platform);
}
