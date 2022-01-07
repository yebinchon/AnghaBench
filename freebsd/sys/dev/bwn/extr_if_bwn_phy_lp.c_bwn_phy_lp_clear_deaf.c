
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_phy_lp {scalar_t__ plp_crssys_off; scalar_t__ plp_crsusr_off; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_phy; } ;


 int BWN_PHY_CRSGAIN_CTL ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;

__attribute__((used)) static void
bwn_phy_lp_clear_deaf(struct bwn_mac *mac, uint8_t user)
{
 struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;

 if (user)
  plp->plp_crsusr_off = 0;
 else
  plp->plp_crssys_off = 0;

 if (plp->plp_crsusr_off || plp->plp_crssys_off)
  return;

 if (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan))
  BWN_PHY_SETMASK(mac, BWN_PHY_CRSGAIN_CTL, 0xff1f, 0x60);
 else
  BWN_PHY_SETMASK(mac, BWN_PHY_CRSGAIN_CTL, 0xff1f, 0x20);
}
