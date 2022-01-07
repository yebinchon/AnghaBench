
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct physical {scalar_t__ fd; TYPE_2__ link; TYPE_1__* handler; } ;
typedef int fd_set ;
struct TYPE_3__ {int (* removefromset ) (struct physical*,int *,int *,int *) ;} ;


 int FD_CLR (scalar_t__,int *) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int LogTIMER ;
 int log_Printf (int ,char*,int ,scalar_t__) ;
 int stub1 (struct physical*,int *,int *,int *) ;

int
physical_RemoveFromSet(struct physical *p, fd_set *r, fd_set *w, fd_set *e)
{
  if (p->handler && p->handler->removefromset)
    return (*p->handler->removefromset)(p, r, w, e);
  else {
    int sets;

    sets = 0;
    if (p->fd >= 0) {
      if (r && FD_ISSET(p->fd, r)) {
        FD_CLR(p->fd, r);
        log_Printf(LogTIMER, "%s: fdunset(r) %d\n", p->link.name, p->fd);
        sets++;
      }
      if (e && FD_ISSET(p->fd, e)) {
        FD_CLR(p->fd, e);
        log_Printf(LogTIMER, "%s: fdunset(e) %d\n", p->link.name, p->fd);
        sets++;
      }
      if (w && FD_ISSET(p->fd, w)) {
        FD_CLR(p->fd, w);
        log_Printf(LogTIMER, "%s: fdunset(w) %d\n", p->link.name, p->fd);
        sets++;
      }
    }

    return sets;
  }
}
