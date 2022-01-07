
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {scalar_t__ fd_in; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct prompt* descriptor2prompt (struct fdescriptor*) ;

__attribute__((used)) static int
prompt_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct prompt *p = descriptor2prompt(d);
  return p->fd_in >= 0 && FD_ISSET(p->fd_in, fdset);
}
