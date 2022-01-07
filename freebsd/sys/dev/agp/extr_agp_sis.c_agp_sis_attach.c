
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_sis_softc {int initial_aperture; struct agp_gatt* gatt; } ;
struct agp_gatt {int ag_physical; } ;
typedef int device_t ;


 int AGP_GET_APERTURE (int ) ;
 scalar_t__ AGP_SET_APERTURE (int ,int) ;
 int AGP_SIS_ATTBASE ;
 int AGP_SIS_TLBCTRL ;
 int AGP_SIS_WINCTRL ;
 int ENOMEM ;
 struct agp_gatt* agp_alloc_gatt (int ) ;
 int agp_generic_attach (int ) ;
 int agp_generic_detach (int ) ;
 struct agp_sis_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_sis_attach(device_t dev)
{
 struct agp_sis_softc *sc = device_get_softc(dev);
 struct agp_gatt *gatt;
 int error;

 error = agp_generic_attach(dev);
 if (error)
  return error;

 sc->initial_aperture = AGP_GET_APERTURE(dev);

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


 pci_write_config(dev, AGP_SIS_ATTBASE, gatt->ag_physical, 4);


 pci_write_config(dev, AGP_SIS_WINCTRL,
    pci_read_config(dev, AGP_SIS_WINCTRL, 1) | 3, 1);





 pci_write_config(dev, AGP_SIS_TLBCTRL, 0x05, 1);

 return 0;
}
