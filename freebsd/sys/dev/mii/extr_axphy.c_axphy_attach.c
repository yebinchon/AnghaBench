
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
typedef int device_t ;


 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 int axphy_funcs ;
 struct mii_softc* device_get_softc (int ) ;
 int mii_phy_dev_attach (int ,int,int *,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;

__attribute__((used)) static int
axphy_attach(device_t dev)
{
 struct mii_softc *sc;

 sc = device_get_softc(dev);

 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE,
     &axphy_funcs, 1);
 mii_phy_setmedia(sc);

 return (0);
}
