
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ state; int status; } ;


 int RowStatus_active ;
 int SNMP_ERR_NOERROR ;
 scalar_t__ wlanIfaceState_up ;
 int wlan_clone_create (struct wlan_iface*) ;
 int wlan_config_state (struct wlan_iface*,int) ;

__attribute__((used)) static int
wlan_iface_create(struct wlan_iface *wif)
{
 int rc;

 if ((rc = wlan_clone_create(wif)) == SNMP_ERR_NOERROR) {




  wif->status = RowStatus_active;
  if (wif->state == wlanIfaceState_up)
   (void)wlan_config_state(wif, 1);
 }

 return (rc);
}
