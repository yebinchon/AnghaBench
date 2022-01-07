
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mii_attach_args {int mii_id2; } ;
typedef int device_t ;


 int MIIF_MACPRIV0 ;
 int MIIF_NOISOLATE ;
 int MIIF_NOMANPAUSE ;
 int MIIF_PHYPRIV0 ;
 scalar_t__ MII_MODEL (int ) ;
 scalar_t__ MII_MODEL_xxICPLUS_IP1000A ;
 struct mii_attach_args* device_get_ivars (int ) ;
 int ip1000phy_funcs ;
 scalar_t__ mii_dev_mac_match (int ,char*) ;
 int mii_phy_dev_attach (int ,int,int *,int) ;
 int miibus_get_flags (int ) ;

__attribute__((used)) static int
ip1000phy_attach(device_t dev)
{
 struct mii_attach_args *ma;
 u_int flags;

 ma = device_get_ivars(dev);
 flags = MIIF_NOISOLATE | MIIF_NOMANPAUSE;
 if (MII_MODEL(ma->mii_id2) == MII_MODEL_xxICPLUS_IP1000A &&
      mii_dev_mac_match(dev, "stge") &&
      (miibus_get_flags(dev) & MIIF_MACPRIV0) != 0)
  flags |= MIIF_PHYPRIV0;
 mii_phy_dev_attach(dev, flags, &ip1000phy_funcs, 1);
 return (0);
}
