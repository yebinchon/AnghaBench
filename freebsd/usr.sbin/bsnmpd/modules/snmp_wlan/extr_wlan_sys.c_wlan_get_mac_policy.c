
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int macsupported; size_t mac_nacls; int wname; void* mac_policy; } ;
struct ieee80211req_maclist {int dummy; } ;
struct ieee80211req {int i_type; void* i_val; int i_name; } ;


 scalar_t__ EINVAL ;
 int IEEE80211_IOC_MACCMD ;
 int IEEE80211_MACCMD_LIST ;
 void* IEEE80211_MACCMD_POLICY ;




 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCG80211 ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int sock ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ,int ,int ) ;
 void* wlanMACAccessControlPolicy_allow ;
 void* wlanMACAccessControlPolicy_deny ;
 void* wlanMACAccessControlPolicy_open ;
 void* wlanMACAccessControlPolicy_radius ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int ) ;

int
wlan_get_mac_policy(struct wlan_iface *wif)
{
 int val = IEEE80211_MACCMD_POLICY;
 size_t argsize = 0;
 struct ieee80211req ireq;

 memset(&ireq, 0, sizeof(struct ieee80211req));
 strlcpy(ireq.i_name, wif->wname, IFNAMSIZ);
 ireq.i_type = IEEE80211_IOC_MACCMD;
 ireq.i_val = IEEE80211_MACCMD_POLICY;

 if (ioctl(sock, SIOCG80211, &ireq) < 0) {
  if (errno != EINVAL) {
   syslog(LOG_ERR, "iface %s - get param: ioctl(%d) "
       "failed: %s", wif->wname, ireq.i_type,
       strerror(errno));
   wif->macsupported = 0;
   return (-1);
  } else {
   wif->macsupported = 1;
   wif->mac_policy = wlanMACAccessControlPolicy_open;
   return (0);
  }

 }

 wif->macsupported = 1;

 switch (val) {
 case 131:
  wif->mac_policy = wlanMACAccessControlPolicy_allow;
  break;
 case 130:
  wif->mac_policy = wlanMACAccessControlPolicy_deny;
  break;
 case 128:
  wif->mac_policy = wlanMACAccessControlPolicy_radius;
  break;
 case 129:

 default:
  wif->mac_policy = wlanMACAccessControlPolicy_open;
  break;
 }

 argsize = 0;
 val = IEEE80211_MACCMD_LIST;
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MACCMD, &val, ((void*)0),
     &argsize, 0) < 0)
  return (-1);

 wif->mac_nacls = argsize / sizeof(struct ieee80211req_maclist *);
 return (0);
}
