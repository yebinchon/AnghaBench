
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_dev; } ;


 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

void *
mii_phy_mac_softc(struct mii_softc *mii)
{

 return (device_get_softc(device_get_parent(mii->mii_dev)));
}
