
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {scalar_t__ fd; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;

int
physical_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  return p->fd >= 0 && FD_ISSET(p->fd, fdset);
}
