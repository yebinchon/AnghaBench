
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_NOTICE ;
 size_t WLAN_KMOD ;
 size_t WLAN_KMOD_ACL ;
 size_t WLAN_KMOD_WEP ;
 int syslog (int ,char*,int ) ;
 scalar_t__ wlan_kmod_load (int ) ;
 int * wmod_names ;

int
wlan_kmodules_load(void)
{
 if (wlan_kmod_load(wmod_names[WLAN_KMOD]) < 0)
  return (-1);

 if (wlan_kmod_load(wmod_names[WLAN_KMOD_ACL]) > 0)
  syslog(LOG_NOTICE, "SNMP wlan loaded %s module",
      wmod_names[WLAN_KMOD_ACL]);

 if (wlan_kmod_load(wmod_names[WLAN_KMOD_WEP]) > 0)
  syslog(LOG_NOTICE, "SNMP wlan loaded %s module",
      wmod_names[WLAN_KMOD_WEP]);

 return (0);
}
