
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vtmmio_softc {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 scalar_t__ VIRTIO_MMIO_CONFIG ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_read_config_1 (struct vtmmio_softc*,scalar_t__) ;
 int vtmmio_read_config_2 (struct vtmmio_softc*,scalar_t__) ;
 int vtmmio_read_config_4 (struct vtmmio_softc*,scalar_t__) ;

__attribute__((used)) static void
vtmmio_read_dev_config(device_t dev, bus_size_t offset,
    void *dst, int length)
{
 struct vtmmio_softc *sc;
 bus_size_t off;
 uint8_t *d;
 int size;

 sc = device_get_softc(dev);
 off = VIRTIO_MMIO_CONFIG + offset;

 for (d = dst; length > 0; d += size, off += size, length -= size) {
  {
   size = 1;
   *d = vtmmio_read_config_1(sc, off);
  }
 }
}
