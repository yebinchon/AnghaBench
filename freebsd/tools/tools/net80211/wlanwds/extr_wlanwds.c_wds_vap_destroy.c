
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_name; } ;
typedef int ifr ;


 int AF_INET ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCIFDESTROY ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char const*,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
wds_vap_destroy(const char *ifname)
{
 struct ieee80211req ifr;
 int s, status;

 s = socket(AF_INET, SOCK_DGRAM, 0);
 if (s < 0) {
  syslog(LOG_ERR, "socket(SOCK_DRAGM): %m");
  return -1;
 }
 memset(&ifr, 0, sizeof(ifr));
 strncpy(ifr.i_name, ifname, IFNAMSIZ);
 if (ioctl(s, SIOCIFDESTROY, &ifr) < 0) {
  syslog(LOG_ERR, "ioctl(SIOCIFDESTROY): %m");
  status = -1;
 } else
  status = 0;
 close(s);
 return status;
}
