
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_chan_avail; } ;


 int IEEE80211_ELEMID_SUPPCHAN ;
 int memcpy (int*,int ,int const) ;

__attribute__((used)) static uint8_t *
ieee80211_add_supportedchannels(uint8_t *frm, struct ieee80211com *ic)
{
 static const int ielen = 26;

 frm[0] = IEEE80211_ELEMID_SUPPCHAN;
 frm[1] = ielen;

 memcpy(frm+2, ic->ic_chan_avail, ielen);
 return frm + 2 + ielen;
}
