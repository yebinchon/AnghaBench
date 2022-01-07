
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_ie_htcap {int dummy; } ;


 int BCM_OUI ;
 int BCM_OUI_HTCAP ;
 int IEEE80211_ELEMID_VENDOR ;
 int* ieee80211_add_htcap_body (int*,struct ieee80211_node*) ;

uint8_t *
ieee80211_add_htcap_vendor(uint8_t *frm, struct ieee80211_node *ni)
{
 frm[0] = IEEE80211_ELEMID_VENDOR;
 frm[1] = 4 + sizeof(struct ieee80211_ie_htcap) - 2;
 frm[2] = (BCM_OUI >> 0) & 0xff;
 frm[3] = (BCM_OUI >> 8) & 0xff;
 frm[4] = (BCM_OUI >> 16) & 0xff;
 frm[5] = BCM_OUI_HTCAP;
 return ieee80211_add_htcap_body(frm + 6, ni);
}
