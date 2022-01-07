
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {struct name* n_flink; struct name* n_blink; int n_name; } ;


 scalar_t__ strcasecmp (int ,int ) ;

struct name *
elide(struct name *names)
{
 struct name *np, *t, *new;
 struct name *x;

 if (names == ((void*)0))
  return (((void*)0));
 new = names;
 np = names;
 np = np->n_flink;
 if (np != ((void*)0))
  np->n_blink = ((void*)0);
 new->n_flink = ((void*)0);
 while (np != ((void*)0)) {
  t = new;
  while (strcasecmp(t->n_name, np->n_name) < 0) {
   if (t->n_flink == ((void*)0))
    break;
   t = t->n_flink;
  }






  if (strcasecmp(t->n_name, np->n_name) < 0) {
   t->n_flink = np;
   np->n_blink = t;
   t = np;
   np = np->n_flink;
   t->n_flink = ((void*)0);
   continue;
  }







  if (t == new) {
   t = np;
   np = np->n_flink;
   t->n_flink = new;
   new->n_blink = t;
   t->n_blink = ((void*)0);
   new = t;
   continue;
  }






  x = np;
  np = np->n_flink;
  x->n_flink = t;
  x->n_blink = t->n_blink;
  t->n_blink->n_flink = x;
  t->n_blink = x;
 }






 np = new;
 while (np != ((void*)0)) {
  t = np;
  while (t->n_flink != ((void*)0) &&
      strcasecmp(np->n_name, t->n_flink->n_name) == 0)
   t = t->n_flink;
  if (t == np || t == ((void*)0)) {
   np = np->n_flink;
   continue;
  }






  np->n_flink = t->n_flink;
  if (t->n_flink != ((void*)0))
   t->n_flink->n_blink = np;
  np = np->n_flink;
 }
 return (new);
}
