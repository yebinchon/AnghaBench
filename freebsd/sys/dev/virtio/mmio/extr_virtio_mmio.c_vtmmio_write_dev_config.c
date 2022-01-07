
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
 int vtmmio_write_config_1 (struct vtmmio_softc*,scalar_t__,int ) ;
 int vtmmio_write_config_2 (struct vtmmio_softc*,scalar_t__,int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
vtmmio_write_dev_config(device_t dev, bus_size_t offset,
    void *src, int length)
{
 struct vtmmio_softc *sc;
 bus_size_t off;
 uint8_t *s;
 int size;

 sc = device_get_softc(dev);
 off = VIRTIO_MMIO_CONFIG + offset;

 for (s = src; length > 0; s += size, off += size, length -= size) {
  {
   size = 1;
   vtmmio_write_config_1(sc, off, *s);
  }
 }
}
