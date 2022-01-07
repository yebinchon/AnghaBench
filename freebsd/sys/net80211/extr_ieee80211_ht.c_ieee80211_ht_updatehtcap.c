
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int iv_htcaps; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int IEEE80211_HTC_SMPS ;
 int htcap_update_ldpc (struct ieee80211_node*) ;
 int htcap_update_mimo_ps (struct ieee80211_node*) ;
 int htcap_update_shortgi (struct ieee80211_node*) ;
 int ieee80211_parse_htcap (struct ieee80211_node*,int const*) ;

void
ieee80211_ht_updatehtcap(struct ieee80211_node *ni, const uint8_t *htcapie)
{
 struct ieee80211vap *vap = ni->ni_vap;

 ieee80211_parse_htcap(ni, htcapie);
 if (vap->iv_htcaps & IEEE80211_HTC_SMPS)
  htcap_update_mimo_ps(ni);
 htcap_update_shortgi(ni);
 htcap_update_ldpc(ni);
}
