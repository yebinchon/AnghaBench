
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int is_rx_rstoobig; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211com {int ic_txstream; int ic_htcaps; } ;
struct ieee80211_rateset {int dummy; } ;
struct ieee80211_htrateset {int rs_nrates; int* rs_rates; } ;
struct ieee80211_node {struct ieee80211_htrateset ni_htrates; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_ie_htcap {int hc_mcsset; } ;


 scalar_t__ const IEEE80211_ELEMID_VENDOR ;
 int IEEE80211_HTC_TXMCS32 ;
 int IEEE80211_HTC_TXUNEQUAL ;
 int IEEE80211_HTRATE_MAXSIZE ;
 int IEEE80211_MSG_11N ;
 int IEEE80211_MSG_XRATE ;
 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int) ;
 int ieee80211_fix_rate (struct ieee80211_node*,struct ieee80211_rateset*,int) ;
 scalar_t__ isclr (int ,int) ;
 int memset (struct ieee80211_htrateset*,int ,int) ;

int
ieee80211_setup_htrates(struct ieee80211_node *ni, const uint8_t *ie, int flags)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211vap *vap = ni->ni_vap;
 const struct ieee80211_ie_htcap *htcap;
 struct ieee80211_htrateset *rs;
 int i, maxequalmcs, maxunequalmcs;

 maxequalmcs = ic->ic_txstream * 8 - 1;
 maxunequalmcs = 0;
 if (ic->ic_htcaps & IEEE80211_HTC_TXUNEQUAL) {
  if (ic->ic_txstream >= 2)
   maxunequalmcs = 38;
  if (ic->ic_txstream >= 3)
   maxunequalmcs = 52;
  if (ic->ic_txstream >= 4)
   maxunequalmcs = 76;
 }

 rs = &ni->ni_htrates;
 memset(rs, 0, sizeof(*rs));
 if (ie != ((void*)0)) {
  if (ie[0] == IEEE80211_ELEMID_VENDOR)
   ie += 4;
  htcap = (const struct ieee80211_ie_htcap *) ie;
  for (i = 0; i < IEEE80211_HTRATE_MAXSIZE; i++) {
   if (isclr(htcap->hc_mcsset, i))
    continue;
   if (rs->rs_nrates == IEEE80211_HTRATE_MAXSIZE) {
    IEEE80211_NOTE(vap,
        IEEE80211_MSG_XRATE | IEEE80211_MSG_11N, ni,
        "WARNING, HT rate set too large; only "
        "using %u rates", IEEE80211_HTRATE_MAXSIZE);
    vap->iv_stats.is_rx_rstoobig++;
    break;
   }
   if (i <= 31 && i > maxequalmcs)
    continue;
   if (i == 32 &&
       (ic->ic_htcaps & IEEE80211_HTC_TXMCS32) == 0)
    continue;
   if (i > 32 && i > maxunequalmcs)
    continue;
   rs->rs_rates[rs->rs_nrates++] = i;
  }
 }
 return ieee80211_fix_rate(ni, (struct ieee80211_rateset *) rs, flags);
}
