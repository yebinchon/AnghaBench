
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_amd_softc {int regs; int gatt; int initial_aperture; } ;
typedef int device_t ;


 int AGP_AMD751_ATTBASE ;
 int AGP_AMD751_MODECTRL ;
 int AGP_AMD751_REGISTERS ;
 int AGP_AMD751_STATUS ;
 int AGP_AMD751_STATUS_GCE ;
 int AGP_SET_APERTURE (int ,int ) ;
 int READ2 (int ) ;
 int SYS_RES_MEMORY ;
 int WRITE2 (int ,int) ;
 int WRITE4 (int ,int ) ;
 int agp_amd_free_gatt (int ) ;
 int agp_free_cdev (int ) ;
 int agp_free_res (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct agp_amd_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_amd_detach(device_t dev)
{
 struct agp_amd_softc *sc = device_get_softc(dev);

 agp_free_cdev(dev);


 WRITE2(AGP_AMD751_STATUS,
        READ2(AGP_AMD751_STATUS) & ~AGP_AMD751_STATUS_GCE);


 pci_write_config(dev, AGP_AMD751_MODECTRL, 0x00, 1);


 WRITE4(AGP_AMD751_ATTBASE, 0);


 AGP_SET_APERTURE(dev, sc->initial_aperture);

 agp_amd_free_gatt(sc->gatt);
 agp_free_res(dev);

 bus_release_resource(dev, SYS_RES_MEMORY,
        AGP_AMD751_REGISTERS, sc->regs);

 return 0;
}
