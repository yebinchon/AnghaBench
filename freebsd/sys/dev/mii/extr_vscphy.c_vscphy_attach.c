
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscphy_softc {int mii_sc; int dev; } ;
typedef int device_t ;


 int MIIF_NOMANPAUSE ;
 struct vscphy_softc* device_get_softc (int ) ;
 int mii_phy_dev_attach (int ,int ,int *,int) ;
 int mii_phy_setmedia (int *) ;
 int vscphy_fdt_get_config (struct vscphy_softc*) ;
 int vscphy_funcs ;

__attribute__((used)) static int
vscphy_attach(device_t dev)
{
 struct vscphy_softc *vsc;

 vsc = device_get_softc(dev);
 vsc->dev = dev;





 mii_phy_dev_attach(dev, MIIF_NOMANPAUSE, &vscphy_funcs, 1);
 mii_phy_setmedia(&vsc->mii_sc);

 return (0);
}
