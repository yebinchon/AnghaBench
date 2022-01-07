
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; } ;


 scalar_t__ wlan_config_check (struct wlan_iface*,int) ;
 int wlan_config_set_snmp_intval (struct wlan_iface*,int,int) ;
 scalar_t__ wlan_ioctl (int ,int,int*,int *,size_t*,int ) ;

__attribute__((used)) static int
wlan_config_get_intval(struct wlan_iface *wif, int op)
{
 int val = 0;
 size_t argsize = 0;

 if (wlan_config_check(wif, op) < 0)
  return (0);
 if (wlan_ioctl(wif->wname, op, &val, ((void*)0), &argsize, 0) < 0)
  return (-1);
 wlan_config_set_snmp_intval(wif, op, val);

 return (0);
}
