
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211_node {TYPE_1__* ni_chan; } ;
struct ieee80211_ie_vht_operation {int dummy; } ;
struct TYPE_2__ {int ic_vht_ch_freq2; int ic_vht_ch_freq1; } ;


 int ADDSHORT (int*,int) ;
 int IEEE80211_ELEMID_VHT_OPMODE ;
 int ieee80211_vht_get_chwidth_ie (TYPE_1__*) ;
 int memset (int*,char,int) ;

uint8_t *
ieee80211_add_vhtinfo(uint8_t *frm, struct ieee80211_node *ni)
{
 memset(frm, '\0', sizeof(struct ieee80211_ie_vht_operation));

 frm[0] = IEEE80211_ELEMID_VHT_OPMODE;
 frm[1] = sizeof(struct ieee80211_ie_vht_operation) - 2;
 frm += 2;


 *frm++ = ieee80211_vht_get_chwidth_ie(ni->ni_chan);


 *frm++ = ni->ni_chan->ic_vht_ch_freq1;


 *frm++ = ni->ni_chan->ic_vht_ch_freq2;


 ADDSHORT(frm, 0xfffc);

 return (frm);
}
