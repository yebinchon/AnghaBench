
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int mp_cache_entries_size; int mp_cache_entries; } ;
typedef int * cache_entry ;


 int TRACE_IN (int * (*) (struct configuration_entry*,char const*)) ;
 int TRACE_OUT (int * (*) (struct configuration_entry*,char const*)) ;
 int ** bsearch (char const*,int ,int ,int,int ) ;
 int configuration_entry_cache_mp_cmp ;

cache_entry
configuration_entry_find_mp_cache_entry(
 struct configuration_entry *config_entry, const char *mp_name)
{
 cache_entry *result;

 TRACE_IN(configuration_entry_find_mp_cache_entry);
 result = bsearch(mp_name, config_entry->mp_cache_entries,
  config_entry->mp_cache_entries_size,
  sizeof(cache_entry), configuration_entry_cache_mp_cmp);

 if (result == ((void*)0)) {
  TRACE_OUT(configuration_entry_find_mp_cache_entry);
  return (((void*)0));
 } else {
  TRACE_OUT(configuration_entry_find_mp_cache_entry);
  return (*result);
 }
}
