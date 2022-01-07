
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_iface {int desired_bssid; int wname; } ;


 size_t IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_BSSID ;
 int memcpy (int ,int *,size_t) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

__attribute__((used)) static int
wlan_config_set_bssid(struct wlan_iface *wif, uint8_t *bssid)
{
 int val = 0;
 size_t argsize = IEEE80211_ADDR_LEN;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_BSSID, &val, bssid,
     &argsize, 1) < 0 || argsize != IEEE80211_ADDR_LEN)
  return (-1);

 memcpy(wif->desired_bssid, bssid, IEEE80211_ADDR_LEN);

 return (0);
}
