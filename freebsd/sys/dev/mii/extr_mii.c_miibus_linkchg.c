
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_ifp; } ;
typedef int device_t ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UNKNOWN ;
 int LINK_STATE_UP ;
 int MIIBUS_LINKCHG (int ) ;
 int device_get_parent (int ) ;
 struct mii_data* device_get_softc (int ) ;
 int if_link_state_change (int ,int) ;

__attribute__((used)) static void
miibus_linkchg(device_t dev)
{
 struct mii_data *mii;
 device_t parent;
 int link_state;

 parent = device_get_parent(dev);
 MIIBUS_LINKCHG(parent);

 mii = device_get_softc(dev);

 if (mii->mii_media_status & IFM_AVALID) {
  if (mii->mii_media_status & IFM_ACTIVE)
   link_state = LINK_STATE_UP;
  else
   link_state = LINK_STATE_DOWN;
 } else
  link_state = LINK_STATE_UNKNOWN;
 if_link_state_change(mii->mii_ifp, link_state);
}
