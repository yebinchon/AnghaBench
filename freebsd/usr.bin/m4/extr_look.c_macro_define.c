
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct macro_definition {int dummy; } ;
typedef TYPE_1__* ndptr ;
struct TYPE_6__ {scalar_t__ defn; int * next; } ;
struct TYPE_5__ {TYPE_2__* d; } ;


 TYPE_1__* create_entry (char const*) ;
 int free_definition (scalar_t__) ;
 scalar_t__ null ;
 int setup_definition (TYPE_2__*,char const*,char const*) ;
 TYPE_2__* xalloc (int,int *) ;

void
macro_define(const char *name, const char *defn)
{
 ndptr n = create_entry(name);
 if (n->d != ((void*)0)) {
  if (n->d->defn != null)
   free_definition(n->d->defn);
 } else {
  n->d = xalloc(sizeof(struct macro_definition), ((void*)0));
  n->d->next = ((void*)0);
 }
 setup_definition(n->d, defn, name);
}
