
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wlan_iface {scalar_t__ nchannels; scalar_t__ chanlist; scalar_t__ desired_channel; int wname; } ;
struct ieee80211_channel {int dummy; } ;
typedef int chan ;


 int IEEE80211_IOC_CURCHAN ;
 int memcpy (struct ieee80211_channel*,scalar_t__,int) ;
 scalar_t__ wlan_get_channel_list (struct wlan_iface*) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_channel*,size_t*,int) ;

__attribute__((used)) static int
wlan_config_set_dchannel(struct wlan_iface *wif, uint32_t dchannel)
{
 int val = 0;
 size_t argsize = sizeof(struct ieee80211_channel);
 struct ieee80211_channel chan;

 if (wlan_get_channel_list(wif) < 0)
  return (-1);

 if (dchannel > wif->nchannels)
  return (-1);

 memcpy(&chan, wif->chanlist + dchannel - 1, sizeof(chan));
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_CURCHAN, &val, &chan,
     &argsize, 1) < 0)
  return (-1);

 wif->desired_channel = dchannel;

 return (0);
}
