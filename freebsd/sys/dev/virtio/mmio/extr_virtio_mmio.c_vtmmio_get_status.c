
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vtmmio_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_MMIO_STATUS ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_read_config_4 (struct vtmmio_softc*,int ) ;

__attribute__((used)) static uint8_t
vtmmio_get_status(device_t dev)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 return (vtmmio_read_config_4(sc, VIRTIO_MMIO_STATUS));
}
