
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_ie_htcap {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_ELEMID_HTCAP ;
 int* ieee80211_add_htcap_body_ch (int*,struct ieee80211vap*,struct ieee80211_channel*) ;

uint8_t *
ieee80211_add_htcap_ch(uint8_t *frm, struct ieee80211vap *vap,
    struct ieee80211_channel *c)
{
 frm[0] = IEEE80211_ELEMID_HTCAP;
 frm[1] = sizeof(struct ieee80211_ie_htcap) - 2;
 return ieee80211_add_htcap_body_ch(frm + 2, vap, c);
}
