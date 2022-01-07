
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_mac_mac {scalar_t__ mac_status; } ;
struct wlan_iface {int mac_maclist; } ;


 scalar_t__ RowStatus_active ;
 int SLIST_REMOVE (int *,struct wlan_mac_mac*,int ,int ) ;
 int free (struct wlan_mac_mac*) ;
 scalar_t__ wlan_del_mac_acl_mac (struct wlan_iface*,struct wlan_mac_mac*) ;
 int wlan_mac_mac ;
 int wm ;

__attribute__((used)) static int
wlan_mac_delete_mac(struct wlan_iface *wif, struct wlan_mac_mac *wmm)
{
 if (wmm->mac_status == RowStatus_active &&
     wlan_del_mac_acl_mac(wif, wmm) < 0)
  return (-1);

 SLIST_REMOVE(&wif->mac_maclist, wmm, wlan_mac_mac, wm);
 free(wmm);

 return (0);
}
