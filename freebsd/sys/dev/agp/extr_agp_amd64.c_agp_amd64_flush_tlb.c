
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd64_softc {int n_mctrl; int * mctrl; } ;
typedef int device_t ;


 int AGP_AMD64_CACHECTRL ;
 int AGP_AMD64_CACHECTRL_INVGART ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_cfgregread (int ,int ,int,int ,int) ;
 int pci_cfgregwrite (int ,int ,int,int ,int,int) ;

__attribute__((used)) static void
agp_amd64_flush_tlb(device_t dev)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->n_mctrl; i++)
  pci_cfgregwrite(0, sc->mctrl[i], 3, AGP_AMD64_CACHECTRL,
      pci_cfgregread(0, sc->mctrl[i], 3, AGP_AMD64_CACHECTRL, 4) |
      AGP_AMD64_CACHECTRL_INVGART, 4);
}
