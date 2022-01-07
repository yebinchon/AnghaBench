
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_dev; } ;


 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

int
mii_phy_mac_match(struct mii_softc *mii, const char *name)
{

 return (strcmp(device_get_name(device_get_parent(mii->mii_dev)),
     name) == 0);
}
