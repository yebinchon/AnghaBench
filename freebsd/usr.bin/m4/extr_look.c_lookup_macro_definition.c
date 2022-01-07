
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_definition {int dummy; } ;
typedef TYPE_1__* ndptr ;
struct TYPE_3__ {struct macro_definition* d; } ;


 int macros ;
 TYPE_1__* ohash_find (int *,int ) ;
 int ohash_qlookup (int *,char const*) ;

struct macro_definition *
lookup_macro_definition(const char *name)
{
 ndptr p;

 p = ohash_find(&macros, ohash_qlookup(&macros, name));
 if (p)
  return p->d;
 else
  return ((void*)0);
}
