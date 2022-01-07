
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int dummy; } ;
struct otus_softc {struct ieee80211com sc_ic; } ;


 int AR_MAC_REG_SLOT_TIME ;
 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int otus_write (struct otus_softc*,int ,int) ;
 int otus_write_barrier (struct otus_softc*) ;

__attribute__((used)) static void
otus_updateslot(struct otus_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t slottime;

 OTUS_LOCK_ASSERT(sc);

 slottime = IEEE80211_GET_SLOTTIME(ic);
 otus_write(sc, AR_MAC_REG_SLOT_TIME, slottime << 10);
 (void)otus_write_barrier(sc);
}
