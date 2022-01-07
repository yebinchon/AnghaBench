
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct physical {TYPE_1__ link; TYPE_2__* handler; } ;
struct execdevice {scalar_t__ fd_out; } ;
typedef int fd_set ;
struct TYPE_4__ {int (* removefromset ) (struct physical*,int *,int *,int *) ;} ;


 int FD_CLR (scalar_t__,int *) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int LogTIMER ;
 struct execdevice* device2exec (TYPE_2__*) ;
 int log_Printf (int ,char*,int ,scalar_t__) ;
 int physical_RemoveFromSet (struct physical*,int *,int *,int *) ;

__attribute__((used)) static int
exec_RemoveFromSet(struct physical *p, fd_set *r, fd_set *w, fd_set *e)
{
  struct execdevice *dev = device2exec(p->handler);
  int sets;

  p->handler->removefromset = ((void*)0);
  sets = physical_RemoveFromSet(p, r, w, e);
  p->handler->removefromset = exec_RemoveFromSet;

  if (dev->fd_out >= 0) {
    if (w && FD_ISSET(dev->fd_out, w)) {
      FD_CLR(dev->fd_out, w);
      log_Printf(LogTIMER, "%s: fdunset(w) %d\n", p->link.name, dev->fd_out);
      sets++;
    }
    if (e && FD_ISSET(dev->fd_out, e)) {
      FD_CLR(dev->fd_out, e);
      log_Printf(LogTIMER, "%s: fdunset(e) %d\n", p->link.name, dev->fd_out);
      sets++;
    }
  }

  return sets;
}
