
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct wlan_iface {int nchannels; char* country_code; int reg_domain; int state; int wname; int chanlist; } ;
struct TYPE_5__ {char* isocc; char location; int regdomain; } ;
struct TYPE_4__ {int ic_nchans; TYPE_3__* ic_chans; } ;
struct ieee80211_regdomain_req {TYPE_2__ rd; TYPE_1__ chaninfo; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_6__ {int ic_maxregpower; } ;


 int IEEE80211_IOC_REGDOMAIN ;
 int IEEE80211_IOC_TXPOWMAX ;
 size_t IEEE80211_REGDOMAIN_SIZE (int) ;
 int LOG_ERR ;
 int free (struct ieee80211_regdomain_req*) ;
 struct ieee80211_regdomain_req* malloc (size_t) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int memset (struct ieee80211_regdomain_req*,int ,size_t) ;
 int syslog (int ,char*,int ) ;
 int wlanIfaceState_down ;
 int wlanIfaceState_up ;
 scalar_t__ wlan_config_state (struct wlan_iface*,int) ;
 scalar_t__ wlan_get_channel_list (struct wlan_iface*) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_regdomain_req*,size_t*,int) ;
 int wlan_regdomain_to_snmp (int ) ;
 int wlan_snmp_to_regdomain (int) ;

__attribute__((used)) static int
wlan_config_set_country(struct wlan_iface *wif, char *ccode, int rdomain)
{
 int val = 0, txpowermax;
 uint32_t i;
 size_t argsize = 0;
 struct ieee80211_regdomain_req *regdomain;

 if (wlan_get_channel_list(wif) < 0)
  return (-1);

 if (wif->nchannels == 0) {
  syslog(LOG_ERR, "iface %s - set regdomain failed", wif->wname);
  return (-1);
 }

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_TXPOWMAX, &txpowermax, 0,
     &argsize, 0) < 0)
  return (-1);

 regdomain = malloc(IEEE80211_REGDOMAIN_SIZE(wif->nchannels));
 if (regdomain == ((void*)0))
  return (-1);
 memset(regdomain, 0, IEEE80211_REGDOMAIN_SIZE(wif->nchannels));
 argsize = IEEE80211_REGDOMAIN_SIZE(wif->nchannels);


 regdomain->rd.regdomain = wlan_snmp_to_regdomain(rdomain);
 regdomain->rd.isocc[0] = ccode[0];
 regdomain->rd.isocc[1] = ccode[1];
 regdomain->rd.location = ccode[2];


 regdomain->chaninfo.ic_nchans = wif->nchannels;
 memcpy(regdomain->chaninfo.ic_chans, wif->chanlist,
     wif->nchannels * sizeof(struct ieee80211_channel));
 for (i = 0; i < wif->nchannels; i++)
  regdomain->chaninfo.ic_chans[i].ic_maxregpower = txpowermax;

 wif->state = wlanIfaceState_down;
 if (wlan_config_state(wif, 1) < 0 ||
     wlan_ioctl(wif->wname, IEEE80211_IOC_REGDOMAIN, &val, regdomain,
     &argsize, 1) < 0) {
  free(regdomain);
  return (-1);
 }

 wif->state = wlanIfaceState_up;
 (void)wlan_config_state(wif, 1);
 wif->reg_domain = wlan_regdomain_to_snmp(regdomain->rd.regdomain);
 wif->country_code[0] = regdomain->rd.isocc[0];
 wif->country_code[1] = regdomain->rd.isocc[1];
 wif->country_code[2] = regdomain->rd.location;
 free(regdomain);

 return (0);
}
