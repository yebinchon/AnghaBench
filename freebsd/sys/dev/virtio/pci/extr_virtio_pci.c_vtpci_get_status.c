
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vtpci_softc {int dummy; } ;
typedef int device_t ;


 int VIRTIO_PCI_STATUS ;
 struct vtpci_softc* device_get_softc (int ) ;
 int vtpci_read_config_1 (struct vtpci_softc*,int ) ;

__attribute__((used)) static uint8_t
vtpci_get_status(device_t dev)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 return (vtpci_read_config_1(sc, VIRTIO_PCI_STATUS));
}
