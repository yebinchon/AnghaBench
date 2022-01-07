
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {struct ieee80211_channel* ic_curchan; struct bwi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
struct bwi_softc {int sc_rates; TYPE_1__* sc_cur_regwin; } ;
struct bwi_mac {int dummy; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;


 int BWI_LOCK (struct bwi_softc*) ;
 scalar_t__ BWI_REGWIN_T_MAC ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int KASSERT (int,char*) ;
 int bwi_rf_set_chan (struct bwi_mac*,int ,int ) ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int ieee80211_get_ratetable (struct ieee80211_channel*) ;

__attribute__((used)) static void
bwi_set_channel(struct ieee80211com *ic)
{
 struct bwi_softc *sc = ic->ic_softc;
 struct ieee80211_channel *c = ic->ic_curchan;
 struct bwi_mac *mac;

 BWI_LOCK(sc);
 KASSERT(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
     ("current regwin type %d", sc->sc_cur_regwin->rw_type));
 mac = (struct bwi_mac *)sc->sc_cur_regwin;
 bwi_rf_set_chan(mac, ieee80211_chan2ieee(ic, c), 0);

 sc->sc_rates = ieee80211_get_ratetable(c);
 BWI_UNLOCK(sc);
}
