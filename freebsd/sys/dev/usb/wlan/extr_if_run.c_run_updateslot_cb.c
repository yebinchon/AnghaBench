
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct run_softc {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int RT2860_BKOFF_SLOT_CFG ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_updateslot_cb(void *arg)
{
 struct ieee80211com *ic = arg;
 struct run_softc *sc = ic->ic_softc;
 uint32_t tmp;

 run_read(sc, RT2860_BKOFF_SLOT_CFG, &tmp);
 tmp &= ~0xff;
 tmp |= IEEE80211_GET_SLOTTIME(ic);
 run_write(sc, RT2860_BKOFF_SLOT_CFG, tmp);
}
