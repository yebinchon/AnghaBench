
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int * country_code; int reg_domain; int wname; } ;
struct ieee80211_regdomain {int location; int * isocc; int regdomain; } ;
typedef int regdomain ;


 int IEEE80211_IOC_REGDOMAIN ;
 int memset (struct ieee80211_regdomain*,int ,int) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211_regdomain*,size_t*,int ) ;
 int wlan_regdomain_to_snmp (int ) ;

__attribute__((used)) static int
wlan_config_get_country(struct wlan_iface *wif)
{
 int val = 0;
 size_t argsize;
 struct ieee80211_regdomain regdomain;

 memset(&regdomain, 0, sizeof(regdomain));
 argsize = sizeof(regdomain);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_REGDOMAIN, &val, &regdomain,
     &argsize, 0) < 0)
  return (-1);

 wif->reg_domain = wlan_regdomain_to_snmp(regdomain.regdomain);
 wif->country_code[0] = regdomain.isocc[0];
 wif->country_code[1] = regdomain.isocc[1];
 wif->country_code[2] = regdomain.location;

 return (0);
}
