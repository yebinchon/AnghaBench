
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_flags_ht; TYPE_1__* iv_bss; } ;
struct ieee80211_node {int ni_htcap; struct ieee80211vap* ni_vap; } ;
struct TYPE_2__ {int ni_chan; } ;


 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_FHT_HT ;
 int IEEE80211_FHT_USEHT40 ;
 int IEEE80211_HTCAP_CHWIDTH40 ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (int ) ;
 int htinfo_update_chw (struct ieee80211_node*,int,int) ;
 int ieee80211_vht_get_vhtflags (struct ieee80211_node*,int) ;

void
ieee80211_ht_updatehtcap_final(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 int htflags;
 int vhtflags;



 htflags = (vap->iv_flags_ht & IEEE80211_FHT_HT) ?
     IEEE80211_CHAN_HT20 : 0;
 if ((ni->ni_htcap & IEEE80211_HTCAP_CHWIDTH40) &&
     (vap->iv_flags_ht & IEEE80211_FHT_USEHT40)) {
  if (IEEE80211_IS_CHAN_HT40U(vap->iv_bss->ni_chan))
   htflags = IEEE80211_CHAN_HT40U;
  else if (IEEE80211_IS_CHAN_HT40D(vap->iv_bss->ni_chan))
   htflags = IEEE80211_CHAN_HT40D;
 }





 vhtflags = ieee80211_vht_get_vhtflags(ni, htflags);

 (void) htinfo_update_chw(ni, htflags, vhtflags);
}
