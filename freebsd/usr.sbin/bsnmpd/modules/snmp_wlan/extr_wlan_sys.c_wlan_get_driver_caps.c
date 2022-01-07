
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlan_iface {int nchannels; struct ieee80211_channel* chanlist; int htcaps; int cryptocaps; int drivercaps; int wname; } ;
struct TYPE_2__ {int ic_nchans; int ic_chans; } ;
struct ieee80211_devcaps_req {TYPE_1__ dc_chaninfo; int dc_htcaps; int dc_cryptocaps; int dc_drivercaps; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_IOC_DEVCAPS ;
 int WLAN_SET_TDMA_OPMODE (struct wlan_iface*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (struct ieee80211_channel*,int ,size_t) ;
 int memset (struct ieee80211_devcaps_req*,int ,int) ;
 int wlan_cryptocaps_to_snmp (int ) ;
 int wlan_drivercaps_to_snmp (int ) ;
 int wlan_htcaps_to_snmp (int ) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_devcaps_req*,size_t*,int ) ;

int
wlan_get_driver_caps(struct wlan_iface *wif)
{
 int val = 0;
 size_t argsize;
 struct ieee80211_devcaps_req dc;

 memset(&dc, 0, sizeof(struct ieee80211_devcaps_req));
 argsize = sizeof(struct ieee80211_devcaps_req);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_DEVCAPS, &val, &dc,
     &argsize, 0) < 0)
  return (-1);

 wif->drivercaps = wlan_drivercaps_to_snmp(dc.dc_drivercaps);
 wif->cryptocaps = wlan_cryptocaps_to_snmp(dc.dc_cryptocaps);
 wif->htcaps = wlan_htcaps_to_snmp(dc.dc_htcaps);

 WLAN_SET_TDMA_OPMODE(wif);

 argsize = dc.dc_chaninfo.ic_nchans * sizeof(struct ieee80211_channel);
 wif->chanlist = (struct ieee80211_channel *)malloc(argsize);
 if (wif->chanlist == ((void*)0))
  return (0);

 memcpy(wif->chanlist, dc.dc_chaninfo.ic_chans, argsize);
 wif->nchannels = dc.dc_chaninfo.ic_nchans;

 return (0);
}
