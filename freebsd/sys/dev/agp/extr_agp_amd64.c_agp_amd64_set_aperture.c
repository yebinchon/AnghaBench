
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct agp_amd64_softc {int n_mctrl; int via_agp; int * mctrl; } ;
typedef int device_t ;


 int AGP_AMD64_APCTRL ;
 size_t AGP_AMD64_APCTRL_SIZE_MASK ;
 size_t AGP_AMD64_TABLE_SIZE ;
 int EINVAL ;
 int agp_amd64_nvidia_set_aperture (int ,size_t) ;
 size_t* agp_amd64_table ;
 int agp_amd64_uli_set_aperture (int ,size_t) ;
 int agp_amd64_via_set_aperture (int ,size_t) ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 size_t pci_cfgregread (int ,int ,int,int ,int) ;
 int pci_cfgregwrite (int ,int ,int,int ,size_t,int) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
agp_amd64_set_aperture(device_t dev, uint32_t aperture)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);
 uint32_t i;
 int j;

 for (i = 0; i < AGP_AMD64_TABLE_SIZE; i++)
  if (agp_amd64_table[i] == aperture)
   break;
 if (i >= AGP_AMD64_TABLE_SIZE)
  return (EINVAL);

 for (j = 0; j < sc->n_mctrl; j++)
  pci_cfgregwrite(0, sc->mctrl[j], 3, AGP_AMD64_APCTRL,
      (pci_cfgregread(0, sc->mctrl[j], 3, AGP_AMD64_APCTRL, 4) &
      ~(AGP_AMD64_APCTRL_SIZE_MASK)) | (i << 1), 4);

 switch (pci_get_vendor(dev)) {
 case 0x10b9:
  return (agp_amd64_uli_set_aperture(dev, aperture));
  break;

 case 0x10de:
  return (agp_amd64_nvidia_set_aperture(dev, aperture));
  break;

 case 0x1106:
  if (sc->via_agp)
   return (agp_amd64_via_set_aperture(dev, aperture));
  break;
 }

 return (0);
}
