
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
typedef int int8_t ;
typedef int ifr ;
typedef int caddr_t ;


 int IFF_UP ;
 int LOG_ERR ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int bzero (struct ifreq*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,int ) ;

int
bridge_set_if_up(const char* b_name, int8_t up)
{
 int flags;
 struct ifreq ifr;

 bzero(&ifr, sizeof(ifr));
 strlcpy(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));
 if (ioctl(sock, SIOCGIFFLAGS, (caddr_t) &ifr) < 0) {
  syslog(LOG_ERR, "set bridge up: ioctl(SIOCGIFFLAGS) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
 if (up == 1)
  flags |= IFF_UP;
 else
  flags &= ~IFF_UP;

 ifr.ifr_flags = flags & 0xffff;
 ifr.ifr_flagshigh = flags >> 16;
 if (ioctl(sock, SIOCSIFFLAGS, (caddr_t) &ifr) < 0) {
  syslog(LOG_ERR, "set bridge up: ioctl(SIOCSIFFLAGS) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 return (0);
}
