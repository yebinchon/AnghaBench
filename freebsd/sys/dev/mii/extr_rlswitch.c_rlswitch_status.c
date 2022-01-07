
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;


 int IFM_100_TX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
rlswitch_status(struct mii_softc *phy)
{
 struct mii_data *mii = phy->mii_pdata;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;
 mii->mii_media_status |= IFM_ACTIVE;
 mii->mii_media_active |=
     IFM_100_TX | IFM_FDX | mii_phy_flowstatus(phy);
}
