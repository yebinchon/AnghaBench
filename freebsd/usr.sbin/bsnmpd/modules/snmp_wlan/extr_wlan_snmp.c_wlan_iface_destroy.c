
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ internal; } ;


 int SNMP_ERR_NOERROR ;
 int wlan_clone_destroy (struct wlan_iface*) ;
 int wlan_delete_wif (struct wlan_iface*) ;

__attribute__((used)) static int
wlan_iface_destroy(struct wlan_iface *wif)
{
 int rc = SNMP_ERR_NOERROR;

 if (wif->internal == 0)
  rc = wlan_clone_destroy(wif);

 if (rc == SNMP_ERR_NOERROR)
  wlan_delete_wif(wif);

 return (rc);
}
