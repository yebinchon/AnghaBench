
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_name; } ;
typedef int ifr ;


 int LOG_ERR ;
 int SIOCIFDESTROY ;
 int bzero (struct ifreq*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,int ) ;

int
bridge_destroy(const char *b_name)
{
 struct ifreq ifr;

 bzero(&ifr, sizeof(ifr));
 strlcpy(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));

 if (ioctl(sock, SIOCIFDESTROY, &ifr) < 0) {
  syslog(LOG_ERR, "destroy bridge: ioctl(SIOCIFDESTROY) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 return (0);
}
