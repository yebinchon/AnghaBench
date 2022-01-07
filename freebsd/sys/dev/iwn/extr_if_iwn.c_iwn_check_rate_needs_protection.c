
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iwn_softc {int dummy; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; int ic_rt; int ic_curchan; } ;


 int IEEE80211_F_USEPROT ;
 int IEEE80211_IS_CHAN_2GHZ (int ) ;
 int IEEE80211_RATE_MCS ;
 scalar_t__ IEEE80211_T_CCK ;
 scalar_t__ ieee80211_rate2phytype (int ,int) ;

__attribute__((used)) static int
iwn_check_rate_needs_protection(struct iwn_softc *sc,
    struct ieee80211vap *vap, uint8_t rate)
{
 struct ieee80211com *ic = vap->iv_ic;





 if (! IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan)) {
  return (0);
 }




 if ((ic->ic_flags & IEEE80211_F_USEPROT) == 0)
  return (0);





 if (rate & IEEE80211_RATE_MCS) {
  return (0);
 }





 if (ieee80211_rate2phytype(ic->ic_rt, rate) == IEEE80211_T_CCK)
  return (0);




 return (1);
}
