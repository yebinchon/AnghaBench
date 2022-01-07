
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct radius {TYPE_1__ cx; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int const*) ;
 struct radius* descriptor2radius (struct fdescriptor*) ;

__attribute__((used)) static int
radius_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct radius *r = descriptor2radius(d);

  return r && r->cx.fd != -1 && FD_ISSET(r->cx.fd, fdset);
}
