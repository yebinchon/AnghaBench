
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_ati_softc {int is_rs300; int initial_aperture; int ag_pdir; int regs; int bsh; int bst; } ;
typedef int device_t ;


 int AGP_FLUSH_TLB (int ) ;
 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_SET_APERTURE (int ,int) ;
 int ATI_GART_BASE ;
 int ATI_GART_FEATURE_ID ;
 int ATI_GART_MMADDR ;
 int ATI_RS100_APSIZE ;
 int ATI_RS100_IG_AGPMODE ;
 int ATI_RS300_APSIZE ;
 int ATI_RS300_IG_AGPMODE ;
 int EINVAL ;
 int ENOMEM ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int WRITE4 (int ,int) ;
 scalar_t__ agp_ati_alloc_gatt (int ) ;
 int agp_generic_attach (int ) ;
 int agp_generic_detach (int ) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct agp_ati_softc* device_get_softc (int ) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
agp_ati_attach(device_t dev)
{
 struct agp_ati_softc *sc = device_get_softc(dev);
 int error, rid;
 u_int32_t temp;
 u_int32_t apsize_reg, agpmode_reg;

 error = agp_generic_attach(dev);
 if (error)
  return error;

 switch (pci_get_devid(dev)) {
 case 0xcab01002:
 case 0xcab21002:
 case 0xcbb21002:
 case 0xcab31002:
  sc->is_rs300 = 0;
  apsize_reg = ATI_RS100_APSIZE;
  agpmode_reg = ATI_RS100_IG_AGPMODE;
  break;
 case 0x58301002:
 case 0x58311002:
 case 0x58321002:
 case 0x58331002:
  sc->is_rs300 = 1;
  apsize_reg = ATI_RS300_APSIZE;
  agpmode_reg = ATI_RS300_IG_AGPMODE;
  break;
 default:

  return EINVAL;
 }

 rid = ATI_GART_MMADDR;
 sc->regs = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->regs) {
  agp_generic_detach(dev);
  return ENOMEM;
 }

 sc->bst = rman_get_bustag(sc->regs);
 sc->bsh = rman_get_bushandle(sc->regs);

 sc->initial_aperture = AGP_GET_APERTURE(dev);

 for (;;) {
  if (agp_ati_alloc_gatt(dev) == 0)
   break;





  if (AGP_SET_APERTURE(dev, AGP_GET_APERTURE(dev) / 2))
   return ENOMEM;
 }

 temp = pci_read_config(dev, apsize_reg, 4);
 pci_write_config(dev, apsize_reg, temp | 1, 4);

 pci_write_config(dev, agpmode_reg, 0x20000, 4);

 WRITE4(ATI_GART_FEATURE_ID, 0x00060000);

 temp = pci_read_config(dev, 4, 4);
 pci_write_config(dev, 4, temp | (1 << 14), 4);

 WRITE4(ATI_GART_BASE, sc->ag_pdir);

 AGP_FLUSH_TLB(dev);

 return 0;
}
