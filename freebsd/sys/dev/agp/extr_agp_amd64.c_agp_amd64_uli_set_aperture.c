
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct agp_amd64_softc {scalar_t__ apbase; } ;
typedef int device_t ;


 int AGP_AMD64_ULI_ENU_SCR ;
 int EINVAL ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int
agp_amd64_uli_set_aperture(device_t dev, uint32_t aperture)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);

 switch (aperture) {
 case 0x02000000:
 case 0x04000000:
 case 0x08000000:
 case 0x10000000:
  break;
 default:
  return (EINVAL);
 }

 pci_write_config(dev, AGP_AMD64_ULI_ENU_SCR,
     sc->apbase + aperture - 1, 4);

 return (0);
}
