
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_definition {scalar_t__ defn; struct macro_definition* next; } ;
typedef TYPE_1__* ndptr ;
struct TYPE_3__ {struct macro_definition* d; } ;


 int free (struct macro_definition*) ;
 TYPE_1__* lookup (char const*) ;
 scalar_t__ null ;

void
macro_popdef(const char *name)
{
 ndptr n = lookup(name);

 if (n != ((void*)0)) {
  struct macro_definition *r = n->d;
  if (r != ((void*)0)) {
   n->d = r->next;
   if (r->defn != null)
    free(r->defn);
   free(r);
  }
 }
}
