
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_iface {scalar_t__ mac_policy; int mac_nacls; int wname; scalar_t__ macsupported; } ;
struct ieee80211req_maclist {int dummy; } ;
struct ieee80211req {int i_type; void* i_val; int i_name; } ;


 scalar_t__ EINVAL ;
 int IEEE80211_IOC_MACCMD ;
 void* IEEE80211_MACCMD_LIST ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCG80211 ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct ieee80211req*) ;
 scalar_t__ malloc (size_t) ;
 int memset (struct ieee80211req*,int ,int) ;
 int sock ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ,int ,int ) ;
 scalar_t__ wlanMACAccessControlPolicy_radius ;
 int wlan_add_mac_macinfo (struct wlan_iface*,struct ieee80211req_maclist const*) ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int ) ;

int
wlan_get_mac_acl_macs(struct wlan_iface *wif)
{
 int i, nacls, val = IEEE80211_MACCMD_LIST;
 size_t argsize = 0;
 uint8_t *data;
 struct ieee80211req ireq;
 const struct ieee80211req_maclist *acllist;

 if (wif->mac_policy == wlanMACAccessControlPolicy_radius) {
  wif->mac_nacls = 0;
  return (0);
 }

 memset(&ireq, 0, sizeof(struct ieee80211req));
 strlcpy(ireq.i_name, wif->wname, IFNAMSIZ);
 ireq.i_type = IEEE80211_IOC_MACCMD;
 ireq.i_val = IEEE80211_MACCMD_LIST;


 if (ioctl(sock, SIOCG80211, &ireq) < 0) {
  if (errno != EINVAL) {
   syslog(LOG_ERR, "iface %s - get param: ioctl(%d) "
       "failed: %s", wif->wname, ireq.i_type,
       strerror(errno));
   wif->macsupported = 0;
   return (-1);
  }
 }

 if (argsize == 0) {
  wif->mac_nacls = 0;
  return (0);
 }

 if ((data = (uint8_t *)malloc(argsize)) == ((void*)0))
  return (-1);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MACCMD, &val, data,
     &argsize, 0) < 0)
  return (-1);

 nacls = argsize / sizeof(*acllist);
 acllist = (struct ieee80211req_maclist *) data;
 for (i = 0; i < nacls; i++)
  (void)wlan_add_mac_macinfo(wif, acllist + i);

 wif->mac_nacls = nacls;
 return (0);
}
