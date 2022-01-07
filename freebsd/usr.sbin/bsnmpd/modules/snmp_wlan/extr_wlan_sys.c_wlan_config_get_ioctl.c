
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int dummy; } ;







 int wlan_config_get_bssid (struct wlan_iface*) ;
 int wlan_config_get_country (struct wlan_iface*) ;
 int wlan_config_get_dchannel (struct wlan_iface*) ;
 int wlan_config_get_dssid (struct wlan_iface*) ;
 int wlan_config_get_intval (struct wlan_iface*,int) ;
 int wlan_config_snmp2ioctl (int) ;

int
wlan_config_get_ioctl(struct wlan_iface *wif, int which)
{
 int op;

 switch (which) {
  case 132:

  case 128:
   return (wlan_config_get_country(wif));
  case 129:
   return (wlan_config_get_dssid(wif));
  case 130:
   return (wlan_config_get_dchannel(wif));
  case 131:
   return (wlan_config_get_bssid(wif));
  default:
   op = wlan_config_snmp2ioctl(which);
   return (wlan_config_get_intval(wif, op));
 }

 return (-1);
}
