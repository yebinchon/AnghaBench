
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ieee80211com {scalar_t__ ic_opmode; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct TYPE_2__ {scalar_t__ type; int rf_ver; int rf_rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;


 scalar_t__ BWN_PHYTYPE_A ;
 int BWN_SHARED ;
 int BWN_SHARED_SPU_WAKEUP ;
 scalar_t__ IEEE80211_M_IBSS ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;
 int max (int,int) ;

__attribute__((used)) static void
bwn_spu_setdelay(struct bwn_mac *mac, int idle)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t delay;

 delay = (mac->mac_phy.type == BWN_PHYTYPE_A) ? 3700 : 1050;
 if (ic->ic_opmode == IEEE80211_M_IBSS || idle)
  delay = 500;
 if ((mac->mac_phy.rf_ver == 0x2050) && (mac->mac_phy.rf_rev == 8))
  delay = max(delay, (uint16_t)2400);

 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_SPU_WAKEUP, delay);
}
