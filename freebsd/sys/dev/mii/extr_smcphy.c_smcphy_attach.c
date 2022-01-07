
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
struct mii_phy_funcs {int dummy; } ;
struct mii_attach_args {int mii_id2; } ;
typedef int device_t ;


 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 scalar_t__ MII_MODEL (int ) ;
 scalar_t__ MII_MODEL_SEEQ_80220 ;
 struct mii_attach_args* device_get_ivars (int ) ;
 struct mii_softc* device_get_softc (int ) ;
 int mii_phy_dev_attach (int ,int,struct mii_phy_funcs const*,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 struct mii_phy_funcs smcphy80220_funcs ;
 struct mii_phy_funcs smcphy_funcs ;

__attribute__((used)) static int
smcphy_attach(device_t dev)
{
 struct mii_softc *sc;
 struct mii_attach_args *ma;
 const struct mii_phy_funcs *mpf;

 sc = device_get_softc(dev);
 ma = device_get_ivars(dev);
 if (MII_MODEL(ma->mii_id2) == MII_MODEL_SEEQ_80220)
  mpf = &smcphy80220_funcs;
 else
  mpf = &smcphy_funcs;
 mii_phy_dev_attach(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE, mpf, 1);
 mii_phy_setmedia(sc);

 return (0);
}
