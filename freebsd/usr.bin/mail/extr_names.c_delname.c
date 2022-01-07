
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct name {TYPE_1__* n_blink; struct name* n_flink; int n_name; } ;
struct TYPE_2__ {struct name* n_flink; } ;


 scalar_t__ strcasecmp (int ,char*) ;

struct name *
delname(struct name *np, char name[])
{
 struct name *p;

 for (p = np; p != ((void*)0); p = p->n_flink)
  if (strcasecmp(p->n_name, name) == 0) {
   if (p->n_blink == ((void*)0)) {
    if (p->n_flink != ((void*)0))
     p->n_flink->n_blink = ((void*)0);
    np = p->n_flink;
    continue;
   }
   if (p->n_flink == ((void*)0)) {
    if (p->n_blink != ((void*)0))
     p->n_blink->n_flink = ((void*)0);
    continue;
   }
   p->n_blink->n_flink = p->n_flink;
   p->n_flink->n_blink = p->n_blink;
  }
 return (np);
}
