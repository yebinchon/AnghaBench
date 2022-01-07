
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_dl {int sdl_type; } ;
struct ifaddrs {int ifa_flags; TYPE_3__* ifa_addr; TYPE_3__* ifa_netmask; int ifa_name; } ;
struct if_info {char* ii_ifname; int ii_fd; scalar_t__ ii_ipaddr; scalar_t__ ii_netmask; int ii_eaddr; struct if_info* ii_next; } ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;




 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 int IFF_UP ;


 int LLADDR (struct sockaddr_dl*) ;
 int LOG_ERR ;
 TYPE_2__* SATOSIN (TYPE_3__*) ;
 int bcopy (int ,int ,int) ;
 int bzero (struct if_info*,int) ;
 int exit (int) ;
 struct if_info* iflist ;
 scalar_t__ ipaddrtonetmask (scalar_t__) ;
 int logmsg (int ,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (struct if_info*,struct if_info*,int) ;
 int pidfile_fh ;
 int pidfile_remove (int ) ;
 int rarp_open (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static void
init_one(struct ifaddrs *ifa, char *target, int pass1)
{
 struct if_info *ii, *ii2;
 struct sockaddr_dl *ll;
 int family;

 family = ifa->ifa_addr->sa_family;
 switch (family) {
 case 131:
  if (pass1)

   return;

 case 130:
  if (!(ifa->ifa_flags & IFF_UP) ||
      (ifa->ifa_flags & (IFF_LOOPBACK | IFF_POINTOPOINT)))
   return;
  break;
 default:
  return;
 }


 if (target != ((void*)0) && strcmp(ifa->ifa_name, target) != 0)
  return;


 for (ii = iflist; ii != ((void*)0); ii = ii->ii_next)
  if (strcmp(ifa->ifa_name, ii->ii_ifname) == 0)
   break;

 if (pass1 && ii != ((void*)0))

  return;


 if (ii == ((void*)0)) {
  ii = (struct if_info *)malloc(sizeof(*ii));
  if (ii == ((void*)0)) {
   logmsg(LOG_ERR, "malloc: %m");
   pidfile_remove(pidfile_fh);
   exit(1);
  }
  bzero(ii, sizeof(*ii));
  ii->ii_fd = -1;
  strlcpy(ii->ii_ifname, ifa->ifa_name, sizeof(ii->ii_ifname));
  ii->ii_next = iflist;
  iflist = ii;
 } else if (!pass1 && ii->ii_ipaddr != 0) {






  ii2 = (struct if_info *)malloc(sizeof(*ii2));
  if (ii2 == ((void*)0)) {
   logmsg(LOG_ERR, "malloc: %m");
   pidfile_remove(pidfile_fh);
   exit(1);
  }
  memcpy(ii2, ii, sizeof(*ii2));
  ii2->ii_fd = -1;
  ii2->ii_next = iflist;
  iflist = ii2;

  ii = ii2;
 }

 switch (family) {
 case 131:
  ii->ii_ipaddr = SATOSIN(ifa->ifa_addr)->sin_addr.s_addr;
  ii->ii_netmask = SATOSIN(ifa->ifa_netmask)->sin_addr.s_addr;
  if (ii->ii_netmask == 0)
   ii->ii_netmask = ipaddrtonetmask(ii->ii_ipaddr);
  if (ii->ii_fd < 0)
   ii->ii_fd = rarp_open(ii->ii_ifname);
  break;

 case 130:
  ll = (struct sockaddr_dl *)ifa->ifa_addr;
  switch (ll->sdl_type) {
  case 129:
  case 128:
   bcopy(LLADDR(ll), ii->ii_eaddr, 6);
  }
  break;
 }
}
