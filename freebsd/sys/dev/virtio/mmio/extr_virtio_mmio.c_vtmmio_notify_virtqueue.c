
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vtmmio_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_MMIO_QUEUE_NOTIFY ;
 struct vtmmio_softc* device_get_softc (int ) ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int ) ;

__attribute__((used)) static void
vtmmio_notify_virtqueue(device_t dev, uint16_t queue)
{
 struct vtmmio_softc *sc;

 sc = device_get_softc(dev);

 vtmmio_write_config_4(sc, VIRTIO_MMIO_QUEUE_NOTIFY, queue);
}
