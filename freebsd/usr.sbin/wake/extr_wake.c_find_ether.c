
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {scalar_t__ sdl_type; } ;
struct ifaddrs {int ifa_flags; int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IFT_ETHER ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static int
find_ether(char *dst, size_t len)
{
 struct ifaddrs *ifap, *ifa;
 struct sockaddr_dl *sdl = ((void*)0);
 int nifs;

 if (dst == ((void*)0) || len == 0)
  return (0);

 if (getifaddrs(&ifap) != 0)
  return (-1);


 for (nifs = 0, ifa = ifap; ifa; ifa = ifa->ifa_next)
  if (ifa->ifa_addr->sa_family == AF_LINK &&
      ifa->ifa_flags & IFF_UP && ifa->ifa_flags & IFF_RUNNING) {
   sdl = (struct sockaddr_dl *)ifa->ifa_addr;
   if (sdl->sdl_type == IFT_ETHER) {
    strlcpy(dst, ifa->ifa_name, len);
    nifs++;
   }
  }

 freeifaddrs(ifap);
 return (nifs == 1 ? 0 : -1);
}
