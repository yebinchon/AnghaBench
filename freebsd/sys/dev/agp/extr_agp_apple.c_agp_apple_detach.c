
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_apple_softc {int gatt; scalar_t__ needs_2x_reset; } ;
typedef int device_t ;


 int AGP_SET_APERTURE (int ,int ) ;
 int UNIN_AGP_GART_2XRESET ;
 int UNIN_AGP_GART_CONTROL ;
 int UNIN_AGP_GART_INVAL ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_apple_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
agp_apple_detach(device_t dev)
{
 struct agp_apple_softc *sc = device_get_softc(dev);

 agp_free_cdev(dev);


 pci_write_config(dev, UNIN_AGP_GART_CONTROL, UNIN_AGP_GART_INVAL, 4);
 pci_write_config(dev, UNIN_AGP_GART_CONTROL, 0, 4);

 if (sc->needs_2x_reset) {
  pci_write_config(dev, UNIN_AGP_GART_CONTROL,
      UNIN_AGP_GART_2XRESET, 4);
  pci_write_config(dev, UNIN_AGP_GART_CONTROL, 0, 4);
 }

 AGP_SET_APERTURE(dev, 0);

 agp_free_gatt(sc->gatt);
 agp_free_res(dev);
 return 0;
}
