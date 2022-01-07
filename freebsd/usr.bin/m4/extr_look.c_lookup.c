
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ndptr ;


 int macros ;
 int ohash_find (int *,int ) ;
 int ohash_qlookup (int *,char const*) ;

ndptr
lookup(const char *name)
{
 return ohash_find(&macros, ohash_qlookup(&macros, name));
}
