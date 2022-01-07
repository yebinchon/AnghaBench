
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_stage (struct cache_entry const*) ;
 int merge_entry (int,int ) ;

__attribute__((used)) static void merge_all(void)
{
 int i;
 for (i = 0; i < active_nr; i++) {
  const struct cache_entry *ce = active_cache[i];
  if (!ce_stage(ce))
   continue;
  i += merge_entry(i, ce->name)-1;
 }
}
