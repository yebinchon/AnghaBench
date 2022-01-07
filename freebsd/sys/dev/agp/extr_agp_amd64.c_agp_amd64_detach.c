
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd64_softc {int n_mctrl; int gatt; int initial_aperture; int * mctrl; } ;
typedef int device_t ;


 int AGP_AMD64_APCTRL ;
 int AGP_AMD64_APCTRL_GARTEN ;
 int AGP_SET_APERTURE (int ,int ) ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_cfgregread (int ,int ,int,int ,int) ;
 int pci_cfgregwrite (int ,int ,int,int ,int,int) ;

__attribute__((used)) static int
agp_amd64_detach(device_t dev)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);
 int i;

 agp_free_cdev(dev);

 for (i = 0; i < sc->n_mctrl; i++)
  pci_cfgregwrite(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL,
      pci_cfgregread(0, sc->mctrl[i], 3, AGP_AMD64_APCTRL, 4) &
      ~AGP_AMD64_APCTRL_GARTEN, 4);

 AGP_SET_APERTURE(dev, sc->initial_aperture);
 agp_free_gatt(sc->gatt);
 agp_free_res(dev);

 return (0);
}
