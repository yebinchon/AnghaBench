
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int as_aperture; } ;
struct agp_nvidia_softc {int gatt; int initial_aperture; TYPE_1__ agp; int mc2_dev; int dev; } ;
typedef int device_t ;


 int AGP_NVIDIA_0_APSIZE ;
 int AGP_NVIDIA_2_GARTCTRL ;
 int AGP_SET_APERTURE (int ,int ) ;
 int agp_free_cdev (int ) ;
 int agp_free_gatt (int ) ;
 int agp_free_res (int ) ;
 struct agp_nvidia_softc* device_get_softc (int ) ;
 int nvidia_init_iorr (int ,int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
agp_nvidia_detach (device_t dev)
{
 struct agp_nvidia_softc *sc = device_get_softc(dev);
 u_int32_t temp;

 agp_free_cdev(dev);


 temp = pci_read_config(sc->dev, AGP_NVIDIA_0_APSIZE, 4);
 pci_write_config(sc->dev, AGP_NVIDIA_0_APSIZE, temp & ~(0x100), 4);


 temp = pci_read_config(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, 4);
 pci_write_config(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, temp & ~(0x11), 4);


 AGP_SET_APERTURE(dev, sc->initial_aperture);


 nvidia_init_iorr(rman_get_start(sc->agp.as_aperture),
    sc->initial_aperture);

 agp_free_gatt(sc->gatt);
 agp_free_res(dev);

 return (0);
}
