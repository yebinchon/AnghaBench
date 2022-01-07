
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct physical {TYPE_1__ link; int handler; } ;
struct fdescriptor {int dummy; } ;
struct etherdevice {scalar_t__ cs; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int LogTIMER ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct etherdevice* device2ether (int ) ;
 int log_Printf (int ,char*,int ,scalar_t__) ;
 scalar_t__ physical_doUpdateSet (struct fdescriptor*,int *,int *,int *,int*,int ) ;

__attribute__((used)) static int
ether_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = descriptor2physical(d);
  struct etherdevice *dev = device2ether(p->handler);
  int result;

  if (r && dev->cs >= 0) {
    FD_SET(dev->cs, r);
    log_Printf(LogTIMER, "%s(ctrl): fdset(r) %d\n", p->link.name, dev->cs);
    result = 1;
  } else
    result = 0;

  result += physical_doUpdateSet(d, r, w, e, n, 0);

  return result;
}
