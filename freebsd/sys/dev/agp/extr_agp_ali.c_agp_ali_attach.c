
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_gatt {int ag_physical; } ;
struct agp_ali_softc {int initial_aperture; struct agp_gatt* gatt; } ;
typedef int device_t ;


 int AGP_ALI_ATTBASE ;
 int AGP_ALI_TLBCTRL ;
 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_SET_APERTURE (int ,int) ;
 int ENOMEM ;
 int ENXIO ;
 struct agp_gatt* agp_alloc_gatt (int ) ;
 int agp_generic_attach (int ) ;
 int agp_generic_detach (int ) ;
 struct agp_ali_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_ali_attach(device_t dev)
{
 struct agp_ali_softc *sc = device_get_softc(dev);
 struct agp_gatt *gatt;
 int error;
 u_int32_t attbase;

 error = agp_generic_attach(dev);
 if (error)
  return error;

 sc->initial_aperture = AGP_GET_APERTURE(dev);
 if (sc->initial_aperture == 0) {
  device_printf(dev, "bad initial aperture size, disabling\n");
  return ENXIO;
 }

 for (;;) {
  gatt = agp_alloc_gatt(dev);
  if (gatt)
   break;





  if (AGP_SET_APERTURE(dev, AGP_GET_APERTURE(dev) / 2)) {
   agp_generic_detach(dev);
   return ENOMEM;
  }
 }
 sc->gatt = gatt;


 attbase = pci_read_config(dev, AGP_ALI_ATTBASE, 4);
 pci_write_config(dev, AGP_ALI_ATTBASE, gatt->ag_physical |
     (attbase & 0xfff), 4);


 pci_write_config(dev, AGP_ALI_TLBCTRL, 0x10, 1);

 return 0;
}
