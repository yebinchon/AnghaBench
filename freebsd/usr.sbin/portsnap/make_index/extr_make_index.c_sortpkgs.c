
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p; } ;
typedef int PORT ;
typedef TYPE_1__ DEP ;


 int heapifypkgs (TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void
sortpkgs(DEP * d, size_t nd)
{
 size_t i;
 PORT * tmp;

 if (nd == 0)
  return;

 for (i = nd; i > 0; i--)
  heapifypkgs(d, nd, i - 1);
 for (i = nd - 1; i > 0; i--) {
  tmp = d[0].p;
  d[0].p = d[i].p;
  d[i].p = tmp;
  heapifypkgs(d, i, 0);
 }
}
