
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 int physical_doUpdateSet (struct fdescriptor*,int *,int *,int *,int*,int ) ;

__attribute__((used)) static int
physical_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                   int *n)
{
  return physical_doUpdateSet(d, r, w, e, n, 0);
}
