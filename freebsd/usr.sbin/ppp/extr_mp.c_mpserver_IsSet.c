
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpserver {scalar_t__ fd; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct mpserver* descriptor2mpserver (struct fdescriptor*) ;

__attribute__((used)) static int
mpserver_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct mpserver *s = descriptor2mpserver(d);
  return s->fd >= 0 && FD_ISSET(s->fd, fdset);
}
