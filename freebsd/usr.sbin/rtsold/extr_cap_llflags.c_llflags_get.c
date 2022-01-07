
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; } ;
struct TYPE_4__ {int ifru_flags6; int ifru_addr; } ;
struct in6_ifreq {TYPE_2__ ifr_ifru; int ifr_name; } ;
struct ifaddrs {TYPE_1__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
typedef int ifr6 ;
struct TYPE_3__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ENOENT ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int PF_INET6 ;
 int SIOCGIFAFLAG_IN6 ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ ioctl (int,int ,struct in6_ifreq*) ;
 int memcpy (int *,struct sockaddr_in6*,int ) ;
 int memset (struct in6_ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
llflags_get(const char *ifname, int *flagsp)
{
 struct in6_ifreq ifr6;
 struct ifaddrs *ifap, *ifa;
 struct sockaddr_in6 *sin6;
 int error, s;

 s = socket(PF_INET6, SOCK_DGRAM, 0);
 if (s < 0)
  return (-1);

 if (getifaddrs(&ifap) != 0)
  return (-1);
 error = -1;
 for (ifa = ifap; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (strcmp(ifa->ifa_name, ifname) != 0)
   continue;
  if (ifa->ifa_addr->sa_family != AF_INET6)
   continue;

  sin6 = (struct sockaddr_in6 *)(void *)ifa->ifa_addr;
  if (!IN6_IS_ADDR_LINKLOCAL(&sin6->sin6_addr))
   continue;

  memset(&ifr6, 0, sizeof(ifr6));
  if (strlcpy(ifr6.ifr_name, ifname, sizeof(ifr6.ifr_name)) >=
      sizeof(ifr6.ifr_name)) {
   freeifaddrs(ifap);
   errno = EINVAL;
   return (-1);
  }
  memcpy(&ifr6.ifr_ifru.ifru_addr, sin6, sin6->sin6_len);
  if (ioctl(s, SIOCGIFAFLAG_IN6, &ifr6) < 0) {
   error = errno;
   freeifaddrs(ifap);
   errno = error;
   return (-1);
  }

  *flagsp = ifr6.ifr_ifru.ifru_flags6;
  error = 0;
  break;
 }
 (void)close(s);
 freeifaddrs(ifap);
 if (error == -1)
  errno = ENOENT;
 return (error);
}
