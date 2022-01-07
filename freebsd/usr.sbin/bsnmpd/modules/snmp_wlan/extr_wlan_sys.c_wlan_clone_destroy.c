
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; } ;
struct ifreq {int ifr_name; } ;
typedef int ifr ;


 int LOG_ERR ;
 int SIOCIFDESTROY ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int sock ;
 int strcpy (int ,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

int
wlan_clone_destroy(struct wlan_iface *wif)
{
 struct ifreq ifr;

 if (wif == ((void*)0))
  return (SNMP_ERR_INCONS_VALUE);

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, wif->wname);

 if (ioctl(sock, SIOCIFDESTROY, &ifr) < 0) {
  syslog(LOG_ERR, "wlan clone destroy: ioctl(SIOCIFDESTROY) "
      "failed: %s", strerror(errno));
  return (SNMP_ERR_GENERR);
 }

 return (SNMP_ERR_NOERROR);
}
