
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct physical {TYPE_1__ link; int handler; } ;
struct fdescriptor {int dummy; } ;
struct execdevice {int fd_out; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int LogTIMER ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct execdevice* device2exec (int ) ;
 int log_Printf (int ,char*,int ,int) ;
 int physical_doUpdateSet (struct fdescriptor*,int *,int *,int *,int*,int ) ;

__attribute__((used)) static int
exec_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct physical *p = descriptor2physical(d);
  struct execdevice *dev = device2exec(p->handler);
  int result = 0;

  if (w && dev->fd_out >= 0) {
    FD_SET(dev->fd_out, w);
    log_Printf(LogTIMER, "%s: fdset(w) %d\n", p->link.name, dev->fd_out);
    result++;
    w = ((void*)0);
  }

  if (e && dev->fd_out >= 0) {
    FD_SET(dev->fd_out, e);
    log_Printf(LogTIMER, "%s: fdset(e) %d\n", p->link.name, dev->fd_out);
    result++;
  }

  if (result && *n <= dev->fd_out)
    *n = dev->fd_out + 1;

  return result + physical_doUpdateSet(d, r, w, e, n, 0);
}
