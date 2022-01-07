
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
struct mii_phy_funcs {int dummy; } ;
typedef int device_t ;


 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 struct mii_softc* device_get_softc (int ) ;
 int mii_phy_dev_attach (int ,int,struct mii_phy_funcs const*,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 struct mii_phy_funcs smscphy_funcs ;

__attribute__((used)) static int
smscphy_attach(device_t dev)
{
 struct mii_softc *sc;
 const struct mii_phy_funcs *mpf;

 sc = device_get_softc(dev);
 mpf = &smscphy_funcs;
 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE, mpf, 1);
 mii_phy_setmedia(sc);

 return (0);
}
