
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int mac_policy; int wname; int macsupported; } ;


 int IEEE80211_IOC_MACCMD ;
 int IEEE80211_MACCMD_POLICY_ALLOW ;
 int IEEE80211_MACCMD_POLICY_DENY ;
 int IEEE80211_MACCMD_POLICY_OPEN ;
 int IEEE80211_MACCMD_POLICY_RADIUS ;




 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int) ;

int
wlan_set_mac_policy(struct wlan_iface *wif)
{
 int val;
 size_t argsize = 0;

 if (!wif->macsupported)
  return (-1);

 switch (wif->mac_policy) {
 case 131:
  val = IEEE80211_MACCMD_POLICY_ALLOW;
  break;
 case 130:
  val = IEEE80211_MACCMD_POLICY_DENY;
  break;
 case 128:
  val = IEEE80211_MACCMD_POLICY_RADIUS;
  break;
 case 129:
  val = IEEE80211_MACCMD_POLICY_OPEN;
  break;
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MACCMD, &val, ((void*)0),
     &argsize, 1) < 0)
  return (-1);

 return (0);
}
