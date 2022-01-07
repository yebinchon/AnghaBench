
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifr_name; } ;
struct wlanstatfoo_p {int mac; TYPE_1__ ifr; } ;
struct sockaddr_dl {int dummy; } ;
struct ifaddrs {TYPE_2__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int LLADDR (struct sockaddr_dl const*) ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
getlladdr(struct wlanstatfoo_p *wf)
{
 const struct sockaddr_dl *sdl;
 struct ifaddrs *ifp, *p;

 if (getifaddrs(&ifp) != 0)
  err(1, "getifaddrs");
 for (p = ifp; p != ((void*)0); p = p->ifa_next)
  if (strcmp(p->ifa_name, wf->ifr.ifr_name) == 0 &&
      p->ifa_addr->sa_family == AF_LINK)
   break;
 if (p == ((void*)0))
  errx(1, "did not find link layer address for interface %s",
   wf->ifr.ifr_name);
 sdl = (const struct sockaddr_dl *) p->ifa_addr;
 IEEE80211_ADDR_COPY(wf->mac, LLADDR(sdl));
 freeifaddrs(ifp);
}
