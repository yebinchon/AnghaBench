
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd64_softc {int apbase; } ;
typedef int device_t ;


 int AGP_AMD64_ULI_APBASE ;
 int AGP_AMD64_ULI_HTT_FEATURE ;
 int agp_amd64_apbase_fixup (int ) ;
 struct agp_amd64_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
agp_amd64_uli_init(device_t dev)
{
 struct agp_amd64_softc *sc = device_get_softc(dev);

 agp_amd64_apbase_fixup(dev);
 pci_write_config(dev, AGP_AMD64_ULI_APBASE,
     (pci_read_config(dev, AGP_AMD64_ULI_APBASE, 4) & 0x0000000f) |
     sc->apbase, 4);
 pci_write_config(dev, AGP_AMD64_ULI_HTT_FEATURE, sc->apbase, 4);
}
