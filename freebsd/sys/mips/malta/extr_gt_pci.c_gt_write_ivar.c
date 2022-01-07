
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gt_pci_softc {uintptr_t sc_busno; } ;
typedef int device_t ;


 int ENOENT ;

 struct gt_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
gt_write_ivar(device_t dev, device_t child, int which, uintptr_t result)
{
 struct gt_pci_softc * sc = device_get_softc(dev);

 switch (which) {
 case 128:
  sc->sc_busno = result;
  return (0);
 }
 return (ENOENT);
}
