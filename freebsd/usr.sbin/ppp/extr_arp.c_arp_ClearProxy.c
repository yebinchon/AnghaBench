
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct in_addr {int s_addr; } ;
struct bundle {int dummy; } ;
struct arpreq {int arp_pa; } ;
typedef int caddr_t ;


 int AF_INET ;
 scalar_t__ ID0ioctl (int,int ,int ) ;
 int LogERROR ;
 int SET_SA_FAMILY (int ,int ) ;
 int SIOCDARP ;
 int errno ;
 int log_Printf (int ,char*,int ) ;
 int memset (struct arpreq*,char,int) ;
 int strerror (int ) ;

int
arp_ClearProxy(struct bundle *bundle, struct in_addr addr, int s)
{
  struct arpreq arpreq;

  memset(&arpreq, '\0', sizeof arpreq);
  SET_SA_FAMILY(arpreq.arp_pa, AF_INET);
  ((struct sockaddr_in *)&arpreq.arp_pa)->sin_addr.s_addr = addr.s_addr;
  if (ID0ioctl(s, SIOCDARP, (caddr_t) & arpreq) < 0) {
    log_Printf(LogERROR, "arp_ClearProxy: ioctl(SIOCDARP): %s\n",
               strerror(errno));
    return 0;
  }
  return 1;
}
