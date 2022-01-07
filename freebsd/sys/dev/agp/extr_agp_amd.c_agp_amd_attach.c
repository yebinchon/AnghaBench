
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd_softc {int initial_aperture; struct agp_amd_gatt* gatt; int regs; int bsh; int bst; } ;
struct agp_amd_gatt {int ag_pdir; } ;
typedef int device_t ;


 int AGP_AMD751_ATTBASE ;
 int AGP_AMD751_MODECTRL ;
 int AGP_AMD751_MODECTRL2 ;
 int AGP_AMD751_MODECTRL2_GPDCE ;
 int AGP_AMD751_MODECTRL_SYNEN ;
 int AGP_AMD751_REGISTERS ;
 int AGP_AMD751_STATUS ;
 int AGP_AMD751_STATUS_GCE ;
 int AGP_FLUSH_TLB (int ) ;
 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_SET_APERTURE (int ,int) ;
 int ENOMEM ;
 int READ2 (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int WRITE2 (int ,int) ;
 int WRITE4 (int ,int ) ;
 struct agp_amd_gatt* agp_amd_alloc_gatt (int ) ;
 int agp_generic_attach (int ) ;
 int agp_generic_detach (int ) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct agp_amd_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int ,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
agp_amd_attach(device_t dev)
{
 struct agp_amd_softc *sc = device_get_softc(dev);
 struct agp_amd_gatt *gatt;
 int error, rid;

 error = agp_generic_attach(dev);
 if (error)
  return error;

 rid = AGP_AMD751_REGISTERS;
 sc->regs = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
       RF_ACTIVE);
 if (!sc->regs) {
  agp_generic_detach(dev);
  return ENOMEM;
 }

 sc->bst = rman_get_bustag(sc->regs);
 sc->bsh = rman_get_bushandle(sc->regs);

 sc->initial_aperture = AGP_GET_APERTURE(dev);

 for (;;) {
  gatt = agp_amd_alloc_gatt(dev);
  if (gatt)
   break;





  if (AGP_SET_APERTURE(dev, AGP_GET_APERTURE(dev) / 2))
   return ENOMEM;
 }
 sc->gatt = gatt;


 WRITE4(AGP_AMD751_ATTBASE, gatt->ag_pdir);


 pci_write_config(dev,
    AGP_AMD751_MODECTRL,
    AGP_AMD751_MODECTRL_SYNEN, 1);


 pci_write_config(dev,
    AGP_AMD751_MODECTRL2,
    AGP_AMD751_MODECTRL2_GPDCE, 1);


 WRITE2(AGP_AMD751_STATUS,
        READ2(AGP_AMD751_STATUS) | AGP_AMD751_STATUS_GCE);
 AGP_FLUSH_TLB(dev);

 return 0;
}
