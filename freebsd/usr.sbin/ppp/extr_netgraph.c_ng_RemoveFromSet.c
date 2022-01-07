
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct physical {TYPE_2__* handler; TYPE_1__ link; } ;
struct ngdevice {scalar_t__ cs; } ;
typedef int fd_set ;
struct TYPE_4__ {int (* removefromset ) (struct physical*,int *,int *,int *) ;} ;


 int FD_CLR (scalar_t__,int *) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int LogTIMER ;
 struct ngdevice* device2ng (TYPE_2__*) ;
 int log_Printf (int ,char*,int ,scalar_t__) ;
 scalar_t__ physical_RemoveFromSet (struct physical*,int *,int *,int *) ;

__attribute__((used)) static int
ng_RemoveFromSet(struct physical *p, fd_set *r, fd_set *w, fd_set *e)
{
  struct ngdevice *dev = device2ng(p->handler);
  int result;

  if (r && dev->cs >= 0 && FD_ISSET(dev->cs, r)) {
    FD_CLR(dev->cs, r);
    log_Printf(LogTIMER, "%s: fdunset(ctrl) %d\n", p->link.name, dev->cs);
    result = 1;
  } else
    result = 0;



  p->handler->removefromset = ((void*)0);
  result += physical_RemoveFromSet(p, r, w, e);
  p->handler->removefromset = ng_RemoveFromSet;

  return result;
}
