
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {scalar_t__ fd; } ;
struct prompt {int desc; struct prompt* next; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct server* descriptor2server (struct fdescriptor*) ;
 scalar_t__ descriptor_IsSet (int *,int const*) ;
 struct prompt* log_PromptList () ;

__attribute__((used)) static int
server_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct server *s = descriptor2server(d);
  struct prompt *p;

  if (s->fd >= 0 && FD_ISSET(s->fd, fdset))
    return 1;

  for (p = log_PromptList(); p; p = p->next)
    if (descriptor_IsSet(&p->desc, fdset))
      return 1;

  return 0;
}
