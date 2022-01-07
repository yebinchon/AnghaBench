
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int MIIF_MACPRIV0 ;
 int MIIF_PHYPRIV0 ;
 int jmphy_funcs ;
 scalar_t__ mii_dev_mac_match (int ,char*) ;
 int mii_phy_dev_attach (int ,int ,int *,int) ;
 int miibus_get_flags (int ) ;

__attribute__((used)) static int
jmphy_attach(device_t dev)
{
 u_int flags;

 flags = 0;
 if (mii_dev_mac_match(dev, "jme") &&
     (miibus_get_flags(dev) & MIIF_MACPRIV0) != 0)
  flags |= MIIF_PHYPRIV0;
 mii_phy_dev_attach(dev, flags, &jmphy_funcs, 1);
 return (0);
}
