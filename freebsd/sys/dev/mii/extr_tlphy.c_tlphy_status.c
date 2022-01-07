
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct mii_data* mii_pdata; } ;
struct tlphy_softc {TYPE_3__ sc_mii; } ;
struct mii_softc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_media_status; TYPE_2__ mii_media; } ;
struct TYPE_4__ {int ifm_media; } ;


 int BMCR_FDX ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_LINK ;
 int CTRL_AUISEL ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_TLPHY_CTRL ;
 int PHY_READ (TYPE_3__*,int ) ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
tlphy_status(struct mii_softc *self)
{
 struct tlphy_softc *sc = (struct tlphy_softc *)self;
 struct mii_data *mii = sc->sc_mii.mii_pdata;
 int bmsr, bmcr, tlctrl;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmcr = PHY_READ(&sc->sc_mii, MII_BMCR);
 if (bmcr & BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 tlctrl = PHY_READ(&sc->sc_mii, MII_TLPHY_CTRL);
 if (tlctrl & CTRL_AUISEL) {
  mii->mii_media_status = 0;
  mii->mii_media_active = mii->mii_media.ifm_cur->ifm_media;
  return;
 }

 bmsr = PHY_READ(&sc->sc_mii, MII_BMSR) |
     PHY_READ(&sc->sc_mii, MII_BMSR);
 if (bmsr & BMSR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;

 if (bmcr & BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;







 if (bmcr & BMCR_FDX)
  mii->mii_media_active |= IFM_FDX | mii_phy_flowstatus(self);
 else
  mii->mii_media_active |= IFM_HDX;
 mii->mii_media_active |= IFM_10_T;
}
