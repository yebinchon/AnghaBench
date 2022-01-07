
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct upgt_softc {int sc_cur_rateset; } ;
struct ieee80211vap {struct ieee80211_txparam* iv_txparms; } ;
struct ieee80211com {scalar_t__ ic_curmode; int ic_curchan; struct upgt_softc* ic_softc; } ;
struct ieee80211_txparam {size_t ucastrate; } ;


 size_t IEEE80211_FIXED_RATE_NONE ;
 scalar_t__ IEEE80211_MODE_11B ;
 scalar_t__ IEEE80211_MODE_11G ;
 scalar_t__ IEEE80211_MODE_AUTO ;
 size_t ieee80211_chan2mode (int ) ;
 int memcpy (int ,int const*,int) ;
 int memset (int ,int const,int) ;

__attribute__((used)) static void
upgt_setup_rates(struct ieee80211vap *vap, struct ieee80211com *ic)
{
 struct upgt_softc *sc = ic->ic_softc;
 const struct ieee80211_txparam *tp;
 const uint8_t rateset_auto_11b[] =
     { 0x13, 0x13, 0x12, 0x11, 0x11, 0x10, 0x10, 0x10 };
 const uint8_t rateset_auto_11g[] =
     { 0x0b, 0x0a, 0x09, 0x08, 0x07, 0x06, 0x04, 0x01 };
 const uint8_t rateset_fix_11bg[] =
     { 0x10, 0x11, 0x12, 0x13, 0x01, 0x04, 0x06, 0x07,
       0x08, 0x09, 0x0a, 0x0b };

 tp = &vap->iv_txparms[ieee80211_chan2mode(ic->ic_curchan)];


 if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE) {





  if (ic->ic_curmode == IEEE80211_MODE_11B)
   memcpy(sc->sc_cur_rateset, rateset_auto_11b,
       sizeof(sc->sc_cur_rateset));
  if (ic->ic_curmode == IEEE80211_MODE_11G ||
      ic->ic_curmode == IEEE80211_MODE_AUTO)
   memcpy(sc->sc_cur_rateset, rateset_auto_11g,
       sizeof(sc->sc_cur_rateset));
 } else {

  memset(sc->sc_cur_rateset, rateset_fix_11bg[tp->ucastrate],
      sizeof(sc->sc_cur_rateset));
 }
}
