
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vga_pci_softc {scalar_t__ vga_msi_child; } ;
typedef scalar_t__ device_t ;


 int ENXIO ;
 struct vga_pci_softc* device_get_softc (scalar_t__) ;
 int pci_remap_msix (scalar_t__,int,int const*) ;

__attribute__((used)) static int
vga_pci_remap_msix(device_t dev, device_t child, int count,
    const u_int *vectors)
{
 struct vga_pci_softc *sc;

 sc = device_get_softc(dev);
 if (sc->vga_msi_child != child)
  return (ENXIO);
 return (pci_remap_msix(dev, count, vectors));
}
