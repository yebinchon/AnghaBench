
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curchan; int * ic_txchan; struct ieee80211_radiotap_header* ic_th; int * ic_rxchan; struct ieee80211_radiotap_header* ic_rh; } ;
struct ieee80211_radiotap_header {int it_present; } ;


 int IEEE80211_RADIOTAP_CHANNEL ;
 int IEEE80211_RADIOTAP_XCHANNEL ;
 int htole32 (int) ;
 int set_channel (int *,int ) ;
 int set_xchannel (int *,int ) ;

void
ieee80211_radiotap_chan_change(struct ieee80211com *ic)
{
 if (ic->ic_rxchan != ((void*)0)) {
  struct ieee80211_radiotap_header *rh = ic->ic_rh;

  if (rh->it_present & htole32(1<<IEEE80211_RADIOTAP_XCHANNEL))
   set_xchannel(ic->ic_rxchan, ic->ic_curchan);
  else if (rh->it_present & htole32(1<<IEEE80211_RADIOTAP_CHANNEL))
   set_channel(ic->ic_rxchan, ic->ic_curchan);
 }
 if (ic->ic_txchan != ((void*)0)) {
  struct ieee80211_radiotap_header *th = ic->ic_th;

  if (th->it_present & htole32(1<<IEEE80211_RADIOTAP_XCHANNEL))
   set_xchannel(ic->ic_txchan, ic->ic_curchan);
  else if (th->it_present & htole32(1<<IEEE80211_RADIOTAP_CHANNEL))
   set_channel(ic->ic_txchan, ic->ic_curchan);
 }
}
