
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;
struct agp_ati_softc {int ag_entries; int regs; scalar_t__ ag_virtual; scalar_t__ ag_vdir; int initial_aperture; scalar_t__ is_rs300; } ;
typedef int device_t ;


 int AGP_PAGE_SIZE ;
 int AGP_SET_APERTURE (int ,int ) ;
 int ATI_GART_BASE ;
 int ATI_GART_MMADDR ;
 int ATI_RS100_APSIZE ;
 int ATI_RS300_APSIZE ;
 int SYS_RES_MEMORY ;
 int WRITE4 (int ,int ) ;
 int agp_free_cdev (int ) ;
 int agp_free_res (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct agp_ati_softc* device_get_softc (int ) ;
 int kmem_free (int ,int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
agp_ati_detach(device_t dev)
{
 struct agp_ati_softc *sc = device_get_softc(dev);
 u_int32_t apsize_reg, temp;

 agp_free_cdev(dev);

 if (sc->is_rs300)
  apsize_reg = ATI_RS300_APSIZE;
 else
  apsize_reg = ATI_RS100_APSIZE;


 WRITE4(ATI_GART_BASE, 0);


 AGP_SET_APERTURE(dev, sc->initial_aperture);

 temp = pci_read_config(dev, apsize_reg, 4);
 pci_write_config(dev, apsize_reg, temp & ~1, 4);

 kmem_free((vm_offset_t)sc->ag_vdir, AGP_PAGE_SIZE);
 kmem_free((vm_offset_t)sc->ag_virtual, sc->ag_entries *
     sizeof(u_int32_t));

 bus_release_resource(dev, SYS_RES_MEMORY, ATI_GART_MMADDR, sc->regs);
 agp_free_res(dev);

 return 0;
}
