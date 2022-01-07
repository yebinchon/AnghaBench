
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
struct TYPE_4__ {int pkgname; } ;
typedef TYPE_1__ PORT ;
typedef TYPE_2__ DEP ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
heapifypkgs(DEP * d, size_t size, size_t pos)
{
 size_t i = pos;
 PORT * tmp;

top:

 if ((2 * pos + 1 < size) &&
     (strcmp(d[i].p->pkgname, d[2 * pos + 1].p->pkgname) < 0))
  i = 2 * pos + 1;
 if ((2 * pos + 2 < size) &&
     (strcmp(d[i].p->pkgname, d[2 * pos + 2].p->pkgname) < 0))
  i = 2 * pos + 2;


 if (i != pos) {
  tmp = d[pos].p;
  d[pos].p = d[i].p;
  d[i].p = tmp;
  pos = i;
  goto top;
 }
}
