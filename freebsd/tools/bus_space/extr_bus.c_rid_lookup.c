
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int fd; } ;


 int EINVAL ;
 int ENXIO ;
 int errno ;
 int nrids ;
 struct resource* ridtbl ;

__attribute__((used)) static struct resource *
rid_lookup(int rid)
{
 struct resource *r;

 if (rid < 0 || rid >= nrids) {
  errno = EINVAL;
  return (((void*)0));
 }
 r = ridtbl + rid;
 if (r->fd == -1) {
  errno = ENXIO;
  return (((void*)0));
 }
 return (r);
}
