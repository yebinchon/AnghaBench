
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mac_mac {struct ieee80211req_mlme* mac; int mac_status; } ;
struct wlan_iface {scalar_t__ mac_policy; int wname; } ;
struct ieee80211req_mlme {int im_macaddr; int im_reason; int im_op; } ;
typedef int mlme ;


 scalar_t__ ENOENT ;
 size_t IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_ADDMAC ;
 int IEEE80211_IOC_MLME ;
 int IEEE80211_MLME_DEAUTH ;
 int IEEE80211_REASON_AUTH_EXPIRE ;
 int RowStatus_active ;
 scalar_t__ errno ;
 int memcpy (int ,struct ieee80211req_mlme*,size_t) ;
 int memset (struct ieee80211req_mlme*,int ,int) ;
 scalar_t__ wlanMACAccessControlPolicy_deny ;
 scalar_t__ wlan_ioctl (int ,int ,int*,struct ieee80211req_mlme*,size_t*,int) ;

int
wlan_add_mac_acl_mac(struct wlan_iface *wif, struct wlan_mac_mac *mmac)
{
 int val = 0;
 size_t argsize = IEEE80211_ADDR_LEN;
 struct ieee80211req_mlme mlme;

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_ADDMAC, &val,
     mmac->mac, &argsize, 1) < 0)
  return (-1);

 mmac->mac_status = RowStatus_active;


 if (wif->mac_policy != wlanMACAccessControlPolicy_deny)
  return (0);

 memset(&mlme, 0, sizeof(mlme));
 mlme.im_op = IEEE80211_MLME_DEAUTH;
 mlme.im_reason = IEEE80211_REASON_AUTH_EXPIRE;
 memcpy(mlme.im_macaddr, mmac->mac, IEEE80211_ADDR_LEN);
 argsize = sizeof(struct ieee80211req_mlme);

 if (wlan_ioctl(wif->wname, IEEE80211_IOC_MLME, &val, &mlme,
     &argsize, 1) < 0 && errno != ENOENT)
  return (-1);

 return (0);
}
