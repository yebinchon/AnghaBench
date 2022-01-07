
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int as_aperture; } ;
struct agp_amd64_softc {int apbase; int n_mctrl; int * mctrl; TYPE_1__ agp; } ;
typedef int device_t ;


 int AGP_AMD64_APBASE ;
 int AGP_AMD64_APBASE_MASK ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_cfgregwrite (int ,int ,int,int ,int,int) ;
 int rman_get_start (int ) ;

__attribute__((used)) static void
agp_amd64_apbase_fixup(device_t dev)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);
 uint32_t apbase;
 int i;

 sc->apbase = rman_get_start(sc->agp.as_aperture);
 apbase = (sc->apbase >> 25) & AGP_AMD64_APBASE_MASK;
 for (i = 0; i < sc->n_mctrl; i++)
  pci_cfgregwrite(0, sc->mctrl[i], 3,
      AGP_AMD64_APBASE, apbase, 4);
}
