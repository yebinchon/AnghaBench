
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_resource {int dummy; } ;
struct vga_pci_softc {struct vga_resource* vga_bars; struct vga_resource vga_bios; } ;


 int PCIR_BIOS ;
 int PCIR_MAX_BAR_0 ;
 int PCI_RID2BAR (int) ;

__attribute__((used)) static struct vga_resource *
lookup_res(struct vga_pci_softc *sc, int rid)
{
 int bar;

 if (rid == PCIR_BIOS)
  return (&sc->vga_bios);
 bar = PCI_RID2BAR(rid);
 if (bar >= 0 && bar <= PCIR_MAX_BAR_0)
  return (&sc->vga_bars[bar]);
 return (((void*)0));
}
