
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sec_param {int dummy; } sec_param ;
typedef int uint8_t ;
struct ieee80211com {int dummy; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;


 int DPRINTF (char*,int ) ;
 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int RT2573_MAC_CSR9 ;
 int rum_modbits (struct rum_softc*,int ,int ,int) ;

__attribute__((used)) static void
rum_update_slot_cb(struct rum_softc *sc, union sec_param *data, uint8_t rvp_id)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t slottime;

 slottime = IEEE80211_GET_SLOTTIME(ic);

 rum_modbits(sc, RT2573_MAC_CSR9, slottime, 0xff);

 DPRINTF("setting slot time to %uus\n", slottime);
}
