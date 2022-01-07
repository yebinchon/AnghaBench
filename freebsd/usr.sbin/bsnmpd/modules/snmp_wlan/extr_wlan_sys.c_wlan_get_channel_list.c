
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct wlan_iface {size_t nchannels; struct ieee80211_channel* chanlist; int wname; } ;
struct ieee80211req_chanlist {size_t ic_nchans; int ic_channels; struct ieee80211_channel* ic_chans; } ;
struct ieee80211req_chaninfo {size_t ic_nchans; int ic_channels; struct ieee80211_channel* ic_chans; } ;
struct ieee80211_channel {int ic_ieee; } ;
typedef int active ;


 int IEEE80211_IOC_CHANINFO ;
 int IEEE80211_IOC_CHANLIST ;
 int WLAN_SNMP_MAX_CHANS ;
 int free (struct ieee80211req_chanlist*) ;
 int isset (int ,int ) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (struct ieee80211_channel*,struct ieee80211_channel const*,int) ;
 scalar_t__ reallocf (struct ieee80211_channel*,size_t) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211req_chanlist*,size_t*,int ) ;

int
wlan_get_channel_list(struct wlan_iface *wif)
{
 int val = 0;
 uint32_t i, nchans;
 size_t argsize;
 struct ieee80211req_chaninfo *chaninfo;
 struct ieee80211req_chanlist active;
 const struct ieee80211_channel *c;

 argsize = sizeof(struct ieee80211req_chaninfo) +
     sizeof(struct ieee80211_channel) * WLAN_SNMP_MAX_CHANS;
 chaninfo = (struct ieee80211req_chaninfo *)malloc(argsize);
 if (chaninfo == ((void*)0))
  return (-1);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_CHANINFO, &val, chaninfo,
     &argsize, 0) < 0)
  return (-1);

 argsize = sizeof(active);
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_CHANLIST, &val, &active,
     &argsize, 0) < 0)
  goto error;

 for (i = 0, nchans = 0; i < chaninfo->ic_nchans; i++) {
  c = &chaninfo->ic_chans[i];
  if (!isset(active.ic_channels, c->ic_ieee))
    continue;
  nchans++;
 }
 wif->chanlist = (struct ieee80211_channel *)reallocf(wif->chanlist,
     nchans * sizeof(*c));
 if (wif->chanlist == ((void*)0))
  goto error;
 wif->nchannels = nchans;
 for (i = 0, nchans = 0; i < chaninfo->ic_nchans; i++) {
  c = &chaninfo->ic_chans[i];
  if (!isset(active.ic_channels, c->ic_ieee))
    continue;
  memcpy(wif->chanlist + nchans, c, sizeof (*c));
  nchans++;
 }

 free(chaninfo);
 return (0);
error:
 wif->nchannels = 0;
 free(chaninfo);
 return (-1);
}
