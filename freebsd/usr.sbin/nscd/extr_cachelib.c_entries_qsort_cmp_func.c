
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry_ {int name; } ;


 int assert (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
entries_qsort_cmp_func(const void *e1, const void *e2)
{

 assert(e1 != ((void*)0));
 assert(e2 != ((void*)0));

 return (strcmp((*(struct cache_entry_ const **)e1)->name,
  (*(struct cache_entry_ const **)e2)->name));
}
