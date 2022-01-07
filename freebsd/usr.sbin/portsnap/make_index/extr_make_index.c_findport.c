
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int portdir; } ;
typedef TYPE_1__ PORT ;


 int errx (int,char*,char*,char*) ;
 int free (char*) ;
 int portcompare (int ,char*) ;

__attribute__((used)) static PORT *
findport(PORT ** pp, size_t st, size_t en, char * name, char * from)
{
 size_t mid;
 int r;

 if (st == en)
  errx(1, "%s: no entry for %s", from, name);

 mid = (st + en) / 2;
 r = portcompare(pp[mid]->portdir, name);

 if (r == 0) {
  free(name);
  return pp[mid];
 } else if (r < 0)
  return findport(pp, mid + 1, en, name, from);
 else
  return findport(pp, st, mid, name, from);
}
