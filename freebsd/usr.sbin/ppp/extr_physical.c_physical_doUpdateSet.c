
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct physical {int fd; TYPE_1__ link; scalar_t__ out; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int LogTIMER ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 scalar_t__ link_QueueLen (TYPE_1__*) ;
 int log_Printf (int ,char*,int ,int) ;

int
physical_doUpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                     int *n, int force)
{
  struct physical *p = descriptor2physical(d);
  int sets;

  sets = 0;
  if (p->fd >= 0) {
    if (r) {
      FD_SET(p->fd, r);
      log_Printf(LogTIMER, "%s: fdset(r) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (e) {
      FD_SET(p->fd, e);
      log_Printf(LogTIMER, "%s: fdset(e) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (w && (force || link_QueueLen(&p->link) || p->out)) {
      FD_SET(p->fd, w);
      log_Printf(LogTIMER, "%s: fdset(w) %d\n", p->link.name, p->fd);
      sets++;
    }
    if (sets && *n < p->fd + 1)
      *n = p->fd + 1;
  }

  return sets;
}
