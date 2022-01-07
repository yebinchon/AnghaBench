
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_pci_softc {int * vga_msi_child; } ;
typedef int * device_t ;


 int ENXIO ;
 struct vga_pci_softc* device_get_softc (int *) ;
 int pci_release_msi (int *) ;

__attribute__((used)) static int
vga_pci_release_msi(device_t dev, device_t child)
{
 struct vga_pci_softc *sc;
 int error;

 sc = device_get_softc(dev);
 if (sc->vga_msi_child != child)
  return (ENXIO);
 error = pci_release_msi(dev);
 if (error == 0)
  sc->vga_msi_child = ((void*)0);
 return (error);
}
