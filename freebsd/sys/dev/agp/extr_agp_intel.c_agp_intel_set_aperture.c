
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_intel_softc {int aperture_mask; int current_aperture; } ;
typedef int device_t ;


 int AGP_INTEL_APSIZE ;
 int EINVAL ;
 struct agp_intel_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_intel_set_aperture(device_t dev, u_int32_t aperture)
{
 struct agp_intel_softc *sc;
 u_int32_t apsize;

 sc = device_get_softc(dev);




 apsize = ((aperture - 1) >> 22) ^ sc->aperture_mask;




 if ((((apsize ^ sc->aperture_mask) << 22) | ((1 << 22) - 1)) + 1 != aperture)
  return (EINVAL);

 sc->current_aperture = apsize;

 pci_write_config(dev, AGP_INTEL_APSIZE, apsize, 1);

 return (0);
}
