
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {scalar_t__ vtpci_child_dev; } ;
typedef scalar_t__ device_t ;


 int ENOENT ;





 struct vtpci_softc* device_get_softc (scalar_t__) ;
 uintptr_t pci_get_device (scalar_t__) ;
 uintptr_t pci_get_subdevice (scalar_t__) ;
 uintptr_t pci_get_subvendor (scalar_t__) ;
 uintptr_t pci_get_vendor (scalar_t__) ;

__attribute__((used)) static int
vtpci_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 if (sc->vtpci_child_dev != child)
  return (ENOENT);

 switch (index) {
 case 131:
 case 130:
  *result = pci_get_subdevice(dev);
  break;
 case 128:
  *result = pci_get_vendor(dev);
  break;
 case 132:
  *result = pci_get_device(dev);
  break;
 case 129:
  *result = pci_get_subvendor(dev);
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
