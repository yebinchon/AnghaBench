
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_via_softc {int gatt; int initial_aperture; int * regs; } ;
typedef int device_t ;


 int AGP_SET_APERTURE (int ,int ) ;
 size_t REG_ATTBASE ;
 size_t REG_GARTCTRL ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_via_softc* device_get_softc (int ) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
agp_via_detach(device_t dev)
{
 struct agp_via_softc *sc = device_get_softc(dev);

 agp_free_cdev(dev);

 pci_write_config(dev, sc->regs[REG_GARTCTRL], 0, 4);
 pci_write_config(dev, sc->regs[REG_ATTBASE], 0, 4);
 AGP_SET_APERTURE(dev, sc->initial_aperture);
 agp_free_gatt(sc->gatt);
 agp_free_res(dev);

 return 0;
}
