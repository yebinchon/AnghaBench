
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_apple_softc {int needs_2x_reset; int u3; int aperture; scalar_t__ gatt; } ;
typedef int device_t ;


 int AGP_FLUSH_TLB (int ) ;
 int AGP_SET_APERTURE (int ,int) ;
 int ENOMEM ;
 int UNIN_AGP_BASE_ADDR ;
 scalar_t__ agp_alloc_gatt (int ) ;
 int agp_generic_attach (int ) ;
 int agp_generic_detach (int ) ;
 int agp_set_aperture_resource (int ,int) ;
 struct agp_apple_softc* device_get_softc (int ) ;
 int pci_get_devid (int ) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
agp_apple_attach(device_t dev)
{
 struct agp_apple_softc *sc = device_get_softc(dev);
 int error;


 sc->needs_2x_reset = 0;
 sc->u3 = 0;
 switch (pci_get_devid(dev)) {
 case 0x0020106b:
 case 0x0027106b:
  sc->needs_2x_reset = 1;
  break;
 case 0x004b106b:
 case 0x0058106b:
 case 0x0059106b:
  sc->u3 = 1;
  break;
 }


 pci_write_config(dev, UNIN_AGP_BASE_ADDR, 0, 4);
 agp_set_aperture_resource(dev, -1);

 error = agp_generic_attach(dev);
 if (error)
  return (error);

 sc->aperture = 256*1024*1024;

 for (sc->aperture = 256*1024*1024; sc->aperture >= 4*1024*1024;
     sc->aperture /= 2) {
  sc->gatt = agp_alloc_gatt(dev);
  if (sc->gatt)
   break;
 }
 if (sc->aperture < 4*1024*1024) {
  agp_generic_detach(dev);
  return ENOMEM;
 }


 AGP_SET_APERTURE(dev, sc->aperture);




 AGP_FLUSH_TLB(dev);

 return (0);
}
