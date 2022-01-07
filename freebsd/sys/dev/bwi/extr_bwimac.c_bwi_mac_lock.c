
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_opmode; } ;
struct bwi_softc {struct ieee80211com sc_ic; } ;
struct bwi_mac {int mac_flags; int mac_rev; struct bwi_softc* mac_sc; } ;


 int BWI_MAC_F_LOCKED ;
 int BWI_MAC_STATUS ;
 int BWI_MAC_STATUS_RFLOCK ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int ) ;
 int DELAY (int) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 int KASSERT (int,char*) ;
 int bwi_mac_config_ps (struct bwi_mac*) ;
 int bwi_mac_stop (struct bwi_mac*) ;

__attribute__((used)) static void
bwi_mac_lock(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;

 KASSERT((mac->mac_flags & BWI_MAC_F_LOCKED) == 0,
     ("mac_flags 0x%x", mac->mac_flags));

 if (mac->mac_rev < 3)
  bwi_mac_stop(mac);
 else if (ic->ic_opmode != IEEE80211_M_HOSTAP)
  bwi_mac_config_ps(mac);

 CSR_SETBITS_4(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_RFLOCK);


 CSR_READ_4(sc, BWI_MAC_STATUS);
 DELAY(10);

 mac->mac_flags |= BWI_MAC_F_LOCKED;
}
