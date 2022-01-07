
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ndptr ;
struct TYPE_4__ {struct macro_definition* d; char const* name; } ;


 int macros ;
 TYPE_1__* ohash_first (int *,unsigned int*) ;
 TYPE_1__* ohash_next (int *,unsigned int*) ;

void
macro_for_all(void (*f)(const char *, struct macro_definition *))
{
 ndptr n;
 unsigned int i;

 for (n = ohash_first(&macros, &i); n != ((void*)0);
     n = ohash_next(&macros, &i))
  if (n->d != ((void*)0))
   f(n->name, n->d);
}
