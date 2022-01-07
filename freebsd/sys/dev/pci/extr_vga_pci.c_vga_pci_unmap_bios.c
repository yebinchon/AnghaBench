
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vga_resource {int * vr_res; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;


 int PCIR_BIOS ;
 int PCIR_BIOS_1 ;
 int PCIR_HDRTYPE ;
 int SYS_RES_MEMORY ;
 int VGA_PCI_BIOS_SHADOW_SIZE ;
 int device_get_softc (int ) ;
 struct vga_resource* lookup_res (int ,int) ;
 int pci_read_config (int ,int ,int) ;
 int pmap_unmapdev (int ,int ) ;
 void* rman_get_virtual (int *) ;
 scalar_t__ vga_pci_is_boot_display (int ) ;
 int vga_pci_release_resource (int ,int *,int ,int,int *) ;

void
vga_pci_unmap_bios(device_t dev, void *bios)
{
 struct vga_resource *vr;
 int rid;

 if (bios == ((void*)0)) {
  return;
 }


 if (vga_pci_is_boot_display(dev)) {

  pmap_unmapdev((vm_offset_t)bios, VGA_PCI_BIOS_SHADOW_SIZE);

  return;
 }

 switch(pci_read_config(dev, PCIR_HDRTYPE, 1)) {
 case 129:
  rid = PCIR_BIOS_1;
  break;
 case 128:
  rid = 0;
  break;
 default:
  rid = PCIR_BIOS;
  break;
 }
 if (rid == 0)
  return;




 vr = lookup_res(device_get_softc(dev), rid);
 KASSERT(vr->vr_res != ((void*)0), ("vga_pci_unmap_bios: bios not mapped"));
 KASSERT(rman_get_virtual(vr->vr_res) == bios,
     ("vga_pci_unmap_bios: mismatch"));
 vga_pci_release_resource(dev, ((void*)0), SYS_RES_MEMORY, rid,
     vr->vr_res);
}
