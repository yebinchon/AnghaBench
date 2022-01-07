
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vtpci_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_CONFIG_STATUS_RESET ;
 int VIRTIO_PCI_STATUS ;
 struct vtpci_softc* device_get_softc (int ) ;
 int vtpci_get_status (int ) ;
 int vtpci_write_config_1 (struct vtpci_softc*,int ,int ) ;

__attribute__((used)) static void
vtpci_set_status(device_t dev, uint8_t status)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 if (status != VIRTIO_CONFIG_STATUS_RESET)
  status |= vtpci_get_status(dev);

 vtpci_write_config_1(sc, VIRTIO_PCI_STATUS, status);
}
