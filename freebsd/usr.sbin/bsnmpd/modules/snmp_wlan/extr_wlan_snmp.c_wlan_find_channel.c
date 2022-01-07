
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wlan_iface {scalar_t__ nchannels; struct ieee80211_channel* chanlist; } ;
struct ieee80211_channel {int dummy; } ;



__attribute__((used)) static struct ieee80211_channel *
wlan_find_channel(struct wlan_iface *wif, uint32_t cindex)
{
 if (wif->chanlist == ((void*)0) || cindex > wif->nchannels)
  return (((void*)0));

 return (wif->chanlist + cindex - 1);
}
