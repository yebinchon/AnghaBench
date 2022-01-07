
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct wlan_iface {size_t nchannels; size_t desired_channel; TYPE_1__* chanlist; int wname; } ;
struct ieee80211_channel {scalar_t__ ic_ieee; scalar_t__ ic_flags; } ;
typedef int chan ;
struct TYPE_2__ {scalar_t__ ic_ieee; scalar_t__ ic_flags; } ;


 int IEEE80211_IOC_CURCHAN ;
 int memset (struct ieee80211_channel*,int ,int) ;
 scalar_t__ wlan_get_channel_list (struct wlan_iface*) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_channel*,size_t*,int ) ;

__attribute__((used)) static int
wlan_config_get_dchannel(struct wlan_iface *wif)
{
 uint32_t i = 0;
 int val = 0;
 size_t argsize = sizeof(struct ieee80211_channel);
 struct ieee80211_channel chan;

 if (wlan_get_channel_list(wif) < 0)
  return (-1);

 memset(&chan, 0, sizeof(chan));
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_CURCHAN, &val, &chan,
     &argsize, 0) < 0)
  return (-1);

 for (i = 0; i < wif->nchannels; i++)
  if (chan.ic_ieee == wif->chanlist[i].ic_ieee &&
      chan.ic_flags == wif->chanlist[i].ic_flags) {
   wif->desired_channel = i + 1;
   break;
  }

 return (0);
}
