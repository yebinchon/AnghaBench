
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ieee80211vap {int iv_htcaps; int iv_flags_ht; } ;
struct ieee80211_node {int ni_flags; struct ieee80211vap* ni_vap; } ;
struct ieee80211_ie_htinfo {int hi_byte1; } ;


 scalar_t__ const IEEE80211_ELEMID_VENDOR ;
 int IEEE80211_FHT_RIFS ;
 int IEEE80211_HTC_SMPS ;
 int IEEE80211_HTINFO_RIFSMODE_PERM ;
 int IEEE80211_NODE_RIFS ;
 int htcap_update_ldpc (struct ieee80211_node*) ;
 int htcap_update_mimo_ps (struct ieee80211_node*) ;
 int htcap_update_shortgi (struct ieee80211_node*) ;
 int htinfo_parse (struct ieee80211_node*,struct ieee80211_ie_htinfo const*) ;
 int ieee80211_parse_htcap (struct ieee80211_node*,scalar_t__ const*) ;

void
ieee80211_ht_updateparams(struct ieee80211_node *ni,
 const uint8_t *htcapie, const uint8_t *htinfoie)
{
 struct ieee80211vap *vap = ni->ni_vap;
 const struct ieee80211_ie_htinfo *htinfo;

 ieee80211_parse_htcap(ni, htcapie);
 if (vap->iv_htcaps & IEEE80211_HTC_SMPS)
  htcap_update_mimo_ps(ni);
 htcap_update_shortgi(ni);
 htcap_update_ldpc(ni);

 if (htinfoie[0] == IEEE80211_ELEMID_VENDOR)
  htinfoie += 4;
 htinfo = (const struct ieee80211_ie_htinfo *) htinfoie;
 htinfo_parse(ni, htinfo);






 if ((htinfo->hi_byte1 & IEEE80211_HTINFO_RIFSMODE_PERM) &&
     (vap->iv_flags_ht & IEEE80211_FHT_RIFS))
  ni->ni_flags |= IEEE80211_NODE_RIFS;
 else
  ni->ni_flags &= ~IEEE80211_NODE_RIFS;
}
