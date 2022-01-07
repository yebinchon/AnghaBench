
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211vap {TYPE_1__* iv_txparms; int iv_ic; } ;
struct ieee80211_scan_entry {int* se_rates; int* se_xrates; } ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int ucastrate; } ;


 int IEEE80211_FIXED_RATE_NONE ;
 int const IEEE80211_RATE_BASIC ;
 int IEEE80211_RV (int const) ;
 size_t ieee80211_chan2mode (struct ieee80211_channel const*) ;
 struct ieee80211_rateset* ieee80211_get_suprates (int ,struct ieee80211_channel const*) ;

__attribute__((used)) static int
check_rate(struct ieee80211vap *vap, const struct ieee80211_channel *chan,
    const struct ieee80211_scan_entry *se)
{
 const struct ieee80211_rateset *srs;
 int i, j, nrs, r, okrate, badrate, fixedrate, ucastrate;
 const uint8_t *rs;

 okrate = badrate = 0;

 srs = ieee80211_get_suprates(vap->iv_ic, chan);
 nrs = se->se_rates[1];
 rs = se->se_rates+2;

 ucastrate = vap->iv_txparms[ieee80211_chan2mode(chan)].ucastrate;
 fixedrate = IEEE80211_FIXED_RATE_NONE;
again:
 for (i = 0; i < nrs; i++) {
  r = IEEE80211_RV(rs[i]);
  badrate = r;



  if (r == ucastrate)
   fixedrate = r;



  for (j = 0; j < srs->rs_nrates; j++)
   if (r == IEEE80211_RV(srs->rs_rates[j])) {
    if (r > okrate)
     okrate = r;
    break;
   }

  if (j == srs->rs_nrates && (rs[i] & IEEE80211_RATE_BASIC)) {




   okrate = 0;
   goto back;
  }
 }
 if (rs == se->se_rates+2) {

  nrs = se->se_xrates[1];
  rs = se->se_xrates+2;
  goto again;
 }

back:
 if (okrate == 0 || ucastrate != fixedrate)
  return badrate | IEEE80211_RATE_BASIC;
 else
  return IEEE80211_RV(okrate);
}
