
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int is_rx_rstoobig; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_rateset {scalar_t__ rs_nrates; scalar_t__ rs_rates; } ;
struct ieee80211_node {struct ieee80211_rateset ni_rates; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_MSG_XRATE ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,scalar_t__,scalar_t__ const) ;
 scalar_t__ IEEE80211_RATE_MAXSIZE ;
 int ieee80211_fix_rate (struct ieee80211_node*,struct ieee80211_rateset*,int) ;
 int memcpy (scalar_t__,scalar_t__ const*,scalar_t__) ;
 int memset (struct ieee80211_rateset*,int ,int) ;

int
ieee80211_setup_rates(struct ieee80211_node *ni,
 const uint8_t *rates, const uint8_t *xrates, int flags)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_rateset *rs = &ni->ni_rates;

 memset(rs, 0, sizeof(*rs));
 rs->rs_nrates = rates[1];
 memcpy(rs->rs_rates, rates + 2, rs->rs_nrates);
 if (xrates != ((void*)0)) {
  uint8_t nxrates;



  nxrates = xrates[1];
  if (rs->rs_nrates + nxrates > IEEE80211_RATE_MAXSIZE) {
   nxrates = IEEE80211_RATE_MAXSIZE - rs->rs_nrates;
   IEEE80211_NOTE(vap, IEEE80211_MSG_XRATE, ni,
       "extended rate set too large; only using "
       "%u of %u rates", nxrates, xrates[1]);
   vap->iv_stats.is_rx_rstoobig++;
  }
  memcpy(rs->rs_rates + rs->rs_nrates, xrates+2, nxrates);
  rs->rs_nrates += nxrates;
 }
 return ieee80211_fix_rate(ni, rs, flags);
}
