
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int txparams; int wname; } ;
struct ieee80211_txparams_req {int dummy; } ;


 int IEEE80211_IOC_TXPARAMS ;
 scalar_t__ wlan_ioctl (int ,int ,int*,int *,size_t*,int ) ;

int
wlan_get_tx_params(struct wlan_iface *wif)
{
 int val = 0;
 size_t argsize;





 argsize = sizeof(struct ieee80211_txparams_req);
 if (wlan_ioctl(wif->wname, IEEE80211_IOC_TXPARAMS, &val,
     &wif->txparams, &argsize, 0) < 0)
  return (-1);

 return (0);
}
