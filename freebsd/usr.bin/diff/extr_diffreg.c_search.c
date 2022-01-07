
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; } ;


 TYPE_1__* clist ;

__attribute__((used)) static int
search(int *c, int k, int y)
{
 int i, j, l, t;

 if (clist[c[k]].y < y)
  return (k + 1);
 i = 0;
 j = k + 1;
 for (;;) {
  l = (i + j) / 2;
  if (l <= i)
   break;
  t = clist[c[l]].y;
  if (t > y)
   j = l;
  else if (t < y)
   i = l;
  else
   return (l);
 }
 return (l + 1);
}
