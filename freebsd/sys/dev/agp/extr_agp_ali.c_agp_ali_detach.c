
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agp_ali_softc {int gatt; int initial_aperture; } ;
typedef int device_t ;


 int AGP_ALI_ATTBASE ;
 int AGP_ALI_TLBCTRL ;
 int AGP_SET_APERTURE (int ,int ) ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_ali_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_ali_detach(device_t dev)
{
 struct agp_ali_softc *sc = device_get_softc(dev);
 u_int32_t attbase;

 agp_free_cdev(dev);


 pci_write_config(dev, AGP_ALI_TLBCTRL, 0x90, 1);


 AGP_SET_APERTURE(dev, sc->initial_aperture);
 attbase = pci_read_config(dev, AGP_ALI_ATTBASE, 4);
 pci_write_config(dev, AGP_ALI_ATTBASE, attbase & 0xfff, 4);

 agp_free_gatt(sc->gatt);
 agp_free_res(dev);
 return 0;
}
