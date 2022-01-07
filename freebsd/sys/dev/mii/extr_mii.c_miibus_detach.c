
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int * mii_ifp; int mii_media; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 struct mii_data* device_get_softc (int ) ;
 int ifmedia_removeall (int *) ;

__attribute__((used)) static int
miibus_detach(device_t dev)
{
 struct mii_data *mii;

 bus_generic_detach(dev);
 mii = device_get_softc(dev);
 ifmedia_removeall(&mii->mii_media);
 mii->mii_ifp = ((void*)0);

 return (0);
}
