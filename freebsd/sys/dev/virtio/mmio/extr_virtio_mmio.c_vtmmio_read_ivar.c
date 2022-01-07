
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {scalar_t__ vtmmio_child_dev; } ;
typedef scalar_t__ device_t ;


 int ENOENT ;





 int VIRTIO_MMIO_DEVICE_ID ;
 int VIRTIO_MMIO_VENDOR_ID ;
 struct vtmmio_softc* device_get_softc (scalar_t__) ;
 uintptr_t vtmmio_read_config_4 (struct vtmmio_softc*,int ) ;

__attribute__((used)) static int
vtmmio_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 if (sc->vtmmio_child_dev != child)
  return (ENOENT);

 switch (index) {
 case 131:
 case 130:
  *result = vtmmio_read_config_4(sc, VIRTIO_MMIO_DEVICE_ID);
  break;
 case 128:
  *result = vtmmio_read_config_4(sc, VIRTIO_MMIO_VENDOR_ID);
  break;
 case 129:
 case 132:




  *result = 0;
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
