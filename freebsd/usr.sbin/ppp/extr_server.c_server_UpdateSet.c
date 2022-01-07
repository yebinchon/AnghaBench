
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int fd; } ;
struct prompt {int desc; struct prompt* next; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int LogTIMER ;
 struct server* descriptor2server (struct fdescriptor*) ;
 scalar_t__ descriptor_UpdateSet (int *,int *,int *,int *,int*) ;
 int log_Printf (int ,char*,int) ;
 struct prompt* log_PromptList () ;

__attribute__((used)) static int
server_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e, int *n)
{
  struct server *s = descriptor2server(d);
  struct prompt *p;
  int sets;

  sets = 0;
  if (r && s->fd >= 0) {
    if (*n < s->fd + 1)
      *n = s->fd + 1;
    FD_SET(s->fd, r);
    log_Printf(LogTIMER, "server: fdset(r) %d\n", s->fd);
    sets++;
  }

  for (p = log_PromptList(); p; p = p->next)
    sets += descriptor_UpdateSet(&p->desc, r, w, e, n);

  return sets;
}
