
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_ie_htinfo {int dummy; } ;


 int IEEE80211_ELEMID_HTINFO ;
 int* ieee80211_add_htinfo_body (int*,struct ieee80211_node*) ;

uint8_t *
ieee80211_add_htinfo(uint8_t *frm, struct ieee80211_node *ni)
{
 frm[0] = IEEE80211_ELEMID_HTINFO;
 frm[1] = sizeof(struct ieee80211_ie_htinfo) - 2;
 return ieee80211_add_htinfo_body(frm + 2, ni);
}
