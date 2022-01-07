
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry_ {int name; } ;


 int assert (int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
entries_bsearch_cmp_func(const void *key, const void *ent)
{

 assert(key != ((void*)0));
 assert(ent != ((void*)0));

 return (strcmp((char const *)key,
  (*(struct cache_entry_ const **)ent)->name));
}
