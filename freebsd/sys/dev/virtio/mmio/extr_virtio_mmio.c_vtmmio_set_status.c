
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vtmmio_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_CONFIG_STATUS_RESET ;
 int VIRTIO_MMIO_STATUS ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_get_status (int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int ) ;

__attribute__((used)) static void
vtmmio_set_status(device_t dev, uint8_t status)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 if (status != VIRTIO_CONFIG_STATUS_RESET)
  status |= vtmmio_get_status(dev);

 vtmmio_write_config_4(sc, VIRTIO_MMIO_STATUS, status);
}
