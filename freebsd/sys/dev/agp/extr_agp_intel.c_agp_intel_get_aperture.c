
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_intel_softc {int aperture_mask; } ;
typedef int device_t ;


 int AGP_INTEL_APSIZE ;
 struct agp_intel_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static u_int32_t
agp_intel_get_aperture(device_t dev)
{
 struct agp_intel_softc *sc;
 u_int32_t apsize;

 sc = device_get_softc(dev);

 apsize = pci_read_config(dev, AGP_INTEL_APSIZE, 1) & sc->aperture_mask;
 return ((((apsize ^ sc->aperture_mask) << 22) | ((1 << 22) - 1)) + 1);
}
