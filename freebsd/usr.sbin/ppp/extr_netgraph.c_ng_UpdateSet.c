
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct physical {TYPE_1__ link; TYPE_2__* dl; int handler; } ;
struct ngdevice {int cs; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;
struct TYPE_4__ {int state; } ;




 int FD_SET (int ,int *) ;
 int LogTIMER ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct ngdevice* device2ng (int ) ;
 int log_Printf (int ,char*,int ,int ) ;
 int physical_doUpdateSet (struct fdescriptor*,int *,int *,int *,int*,int ) ;

__attribute__((used)) static int
ng_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = descriptor2physical(d);
  struct ngdevice *dev = device2ng(p->handler);
  int result;

  switch (p->dl->state) {
    case 129:
    case 128:
      if (r) {
        FD_SET(dev->cs, r);
        log_Printf(LogTIMER, "%s(ctrl): fdset(r) %d\n", p->link.name, dev->cs);
        result = 1;
      } else
        result = 0;
      break;

    default:
      result = physical_doUpdateSet(d, r, w, e, n, 0);
      break;
  }

  return result;
}
