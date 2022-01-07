
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_dl {scalar_t__ sdl_family; } ;
struct ifaddrs {int ifa_name; scalar_t__ ifa_addr; struct ifaddrs* ifa_next; } ;


 scalar_t__ AF_LINK ;
 int D (char*,char const*) ;
 int IFNAMSIZ ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int sprintf (char*,char*,int,int,int,int,int,int) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
source_hwaddr(const char *ifname, char *buf)
{
 struct ifaddrs *ifaphead, *ifap;

 if (getifaddrs(&ifaphead) != 0) {
  D("getifaddrs %s failed", ifname);
  return (-1);
 }

 for (ifap = ifaphead; ifap; ifap = ifap->ifa_next) {
  struct sockaddr_dl *sdl =
   (struct sockaddr_dl *)ifap->ifa_addr;
  uint8_t *mac;

  if (!sdl || sdl->sdl_family != AF_LINK)
   continue;
  if (strncmp(ifap->ifa_name, ifname, IFNAMSIZ) != 0)
   continue;
  mac = (uint8_t *)LLADDR(sdl);
  sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x",
   mac[0], mac[1], mac[2],
   mac[3], mac[4], mac[5]);
  if (verbose)
   D("source hwaddr %s", buf);
  break;
 }
 freeifaddrs(ifaphead);
 return ifap ? 0 : 1;
}
