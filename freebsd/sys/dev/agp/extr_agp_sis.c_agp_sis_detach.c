
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_sis_softc {int gatt; int initial_aperture; } ;
typedef int device_t ;


 int AGP_SET_APERTURE (int ,int ) ;
 int AGP_SIS_TLBCTRL ;
 int AGP_SIS_WINCTRL ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_sis_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
agp_sis_detach(device_t dev)
{
 struct agp_sis_softc *sc = device_get_softc(dev);

 agp_free_cdev(dev);


 pci_write_config(dev, AGP_SIS_WINCTRL,
    pci_read_config(dev, AGP_SIS_WINCTRL, 1) & ~3, 1);


 pci_write_config(dev, AGP_SIS_TLBCTRL, 0, 1);


 AGP_SET_APERTURE(dev, sc->initial_aperture);

 agp_free_gatt(sc->gatt);
 agp_free_res(dev);
 return 0;
}
