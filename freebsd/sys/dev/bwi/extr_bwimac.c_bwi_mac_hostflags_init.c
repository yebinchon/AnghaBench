
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {scalar_t__ rf_type; } ;
struct bwi_phy {scalar_t__ phy_mode; int phy_rev; } ;
struct bwi_mac {struct bwi_rf mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;


 int BWI_CARD_F_PA_GPIO9 ;
 int BWI_HFLAG_GDC_WA ;
 int BWI_HFLAG_OFDM_PA ;
 int BWI_HFLAG_SYM_WA ;
 scalar_t__ BWI_RF_T_BCM2050 ;
 int HFLAGS_READ (struct bwi_mac*) ;
 int HFLAGS_WRITE (struct bwi_mac*,int ) ;
 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_MODE_11B ;
 scalar_t__ IEEE80211_MODE_11G ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static void
bwi_mac_hostflags_init(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_phy *phy = &mac->mac_phy;
 struct bwi_rf *rf = &mac->mac_rf;
 uint64_t host_flags;

 if (phy->phy_mode == IEEE80211_MODE_11A)
  return;

 host_flags = HFLAGS_READ(mac);
 host_flags |= BWI_HFLAG_SYM_WA;

 if (phy->phy_mode == IEEE80211_MODE_11G) {
  if (phy->phy_rev == 1)
   host_flags |= BWI_HFLAG_GDC_WA;
  if (sc->sc_card_flags & BWI_CARD_F_PA_GPIO9)
   host_flags |= BWI_HFLAG_OFDM_PA;
 } else if (phy->phy_mode == IEEE80211_MODE_11B) {
  if (phy->phy_rev >= 2 && rf->rf_type == BWI_RF_T_BCM2050)
   host_flags &= ~BWI_HFLAG_GDC_WA;
 } else {
  panic("unknown PHY mode %u\n", phy->phy_mode);
 }

 HFLAGS_WRITE(mac, host_flags);
}
