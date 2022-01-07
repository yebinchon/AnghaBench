
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; int mii_ifp; } ;
typedef int device_t ;


 int MIIBUS_STATCHG (int ) ;
 int device_get_parent (int ) ;
 struct mii_data* device_get_softc (int ) ;
 int if_setbaudrate (int ,int ) ;
 int ifmedia_baudrate (int ) ;

__attribute__((used)) static void
miibus_statchg(device_t dev)
{
 device_t parent;
 struct mii_data *mii;

 parent = device_get_parent(dev);
 MIIBUS_STATCHG(parent);

 mii = device_get_softc(dev);
 if_setbaudrate(mii->mii_ifp, ifmedia_baudrate(mii->mii_media_active));
}
