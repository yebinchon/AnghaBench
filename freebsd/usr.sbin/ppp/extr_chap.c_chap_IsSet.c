
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdescriptor {int dummy; } ;
struct TYPE_2__ {int fd; } ;
struct chap {TYPE_1__ child; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int const*) ;
 struct chap* descriptor2chap (struct fdescriptor*) ;

__attribute__((used)) static int
chap_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct chap *chap = descriptor2chap(d);

  return chap && chap->child.fd != -1 && FD_ISSET(chap->child.fd, fdset);
}
