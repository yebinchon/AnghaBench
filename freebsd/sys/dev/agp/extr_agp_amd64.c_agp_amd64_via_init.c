
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_amd64_softc {TYPE_1__* gatt; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_physical; } ;


 int AGP3_VIA_ATTBASE ;
 int AGP3_VIA_GARTCTRL ;
 int agp_amd64_apbase_fixup (int ) ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_cfgregread (int ,int,int ,int ,int) ;
 int pci_cfgregwrite (int ,int,int ,int ,int,int) ;

__attribute__((used)) static void
agp_amd64_via_init(device_t dev)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);

 agp_amd64_apbase_fixup(dev);
 pci_cfgregwrite(0, 1, 0, AGP3_VIA_ATTBASE, sc->gatt->ag_physical, 4);
 pci_cfgregwrite(0, 1, 0, AGP3_VIA_GARTCTRL,
     pci_cfgregread(0, 1, 0, AGP3_VIA_ATTBASE, 4) | 0x180, 4);
}
