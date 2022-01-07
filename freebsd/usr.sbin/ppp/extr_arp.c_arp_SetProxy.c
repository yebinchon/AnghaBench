
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr_dl {int sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct bundle {int dummy; } ;
struct TYPE_3__ {int sa_len; int sa_data; int sa_family; } ;
struct arpreq {int arp_flags; int arp_pa; TYPE_1__ arp_ha; } ;
typedef int caddr_t ;


 int AF_INET ;
 int AF_UNSPEC ;
 int ATF_PERM ;
 int ATF_PUBL ;
 scalar_t__ ID0ioctl (int,int ,int ) ;
 int LLADDR (struct sockaddr_dl*) ;
 int LOG_PHASE_BIT ;
 int LogERROR ;
 int SET_SA_FAMILY (int ,int ) ;
 int SIOCSARP ;
 int arp_EtherAddr (struct in_addr,struct sockaddr_dl*,int) ;
 int errno ;
 int log_Printf (int ,char*,...) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct arpreq*,char,int) ;
 int strerror (int ) ;

int
arp_SetProxy(struct bundle *bundle, struct in_addr addr, int s)
{
  struct arpreq arpreq;
  struct {
    struct sockaddr_dl sdl;
    char space[128];
  } dls;

  memset(&arpreq, '\0', sizeof arpreq);





  if (!arp_EtherAddr(addr, &dls.sdl, 1)) {
    log_Printf(LOG_PHASE_BIT, "Cannot determine ethernet address for "
               "proxy ARP\n");
    return 0;
  }
  arpreq.arp_ha.sa_len = sizeof(struct sockaddr);
  arpreq.arp_ha.sa_family = AF_UNSPEC;
  memcpy(arpreq.arp_ha.sa_data, LLADDR(&dls.sdl), dls.sdl.sdl_alen);
  SET_SA_FAMILY(arpreq.arp_pa, AF_INET);
  ((struct sockaddr_in *)&arpreq.arp_pa)->sin_addr.s_addr = addr.s_addr;
  arpreq.arp_flags = ATF_PERM | ATF_PUBL;
  if (ID0ioctl(s, SIOCSARP, (caddr_t) & arpreq) < 0) {
    log_Printf(LogERROR, "arp_SetProxy: ioctl(SIOCSARP): %s\n",
               strerror(errno));
    return 0;
  }
  return 1;
}
