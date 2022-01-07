
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry_ {int dummy; } ;
struct cache_ {int entries_size; int entries; } ;


 scalar_t__ bsearch (char const*,int ,int ,int,int ) ;
 int entries_bsearch_cmp_func ;

__attribute__((used)) static struct cache_entry_ **
find_cache_entry_p(struct cache_ *the_cache, const char *entry_name)
{

 return ((struct cache_entry_ **)(bsearch(entry_name, the_cache->entries,
  the_cache->entries_size, sizeof(struct cache_entry_ *),
  entries_bsearch_cmp_func)));
}
