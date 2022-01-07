
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdcphy_softc {int mii_link_tick; } ;
struct mii_softc {int dummy; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int EJUSTRETURN ;


 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_NONE ;
 int IFM_SUBTYPE (int ) ;



 int PHY_STATUS (struct mii_softc*) ;
 int RDCPHY_MANNEG_TICK ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_tick (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int const) ;

__attribute__((used)) static int
rdcphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct rdcphy_softc *rsc;
 struct ifmedia_entry *ife;

 rsc = (struct rdcphy_softc *)sc;
 ife = mii->mii_media.ifm_cur;

 switch (cmd) {
 case 129:
  break;

 case 130:
  mii_phy_setmedia(sc);
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 132:
  case 131:
   mii->mii_media_status = 0;
   mii->mii_media_active = IFM_ETHER | IFM_NONE;
   rsc->mii_link_tick = RDCPHY_MANNEG_TICK;

   mii_phy_update(sc, 130);
   return (0);
  default:
   break;
  }
  break;

 case 128:
  if (mii_phy_tick(sc) == EJUSTRETURN)
   return (0);
  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
   if (rsc->mii_link_tick > 0) {
    rsc->mii_link_tick--;
    return (0);
   }
  }
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
