
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vtpci_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_PCI_QUEUE_NOTIFY ;
 struct vtpci_softc* device_get_softc (int ) ;
 int vtpci_write_config_2 (struct vtpci_softc*,int ,int ) ;

__attribute__((used)) static void
vtpci_notify_virtqueue(device_t dev, uint16_t queue)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 vtpci_write_config_2(sc, VIRTIO_PCI_QUEUE_NOTIFY, queue);
}
