
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int * mii_dev; } ;
typedef int device_t ;


 int LIST_REMOVE (struct mii_softc*,int ) ;
 struct mii_softc* device_get_softc (int ) ;
 int mii_list ;

int
mii_phy_detach(device_t dev)
{
 struct mii_softc *sc;

 sc = device_get_softc(dev);
 sc->mii_dev = ((void*)0);
 LIST_REMOVE(sc, mii_list);
 return (0);
}
