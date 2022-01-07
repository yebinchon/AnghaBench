
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int reg_domain; char* country_code; } ;







 int wlan_config_set_bssid (struct wlan_iface*,char*) ;
 int wlan_config_set_country (struct wlan_iface*,char*,int) ;
 int wlan_config_set_dchannel (struct wlan_iface*,int) ;
 int wlan_config_set_dssid (struct wlan_iface*,char*,int) ;
 int wlan_config_set_intval (struct wlan_iface*,int,int) ;
 int wlan_config_snmp2ioctl (int) ;

int
wlan_config_set_ioctl(struct wlan_iface *wif, int which, int val,
    char *strval, int len)
{
 int op;

 switch (which) {
  case 132:
   return (wlan_config_set_country(wif, strval,
       wif->reg_domain));
  case 128:
   return (wlan_config_set_country(wif, wif->country_code,
       val));
  case 129:
   return (wlan_config_set_dssid(wif, strval, len));
  case 130:
   return (wlan_config_set_dchannel(wif, val));
  case 131:
   return (wlan_config_set_bssid(wif, strval));
  default:
   op = wlan_config_snmp2ioctl(which);
   return (wlan_config_set_intval(wif, op, val));
 }

 return (-1);
}
