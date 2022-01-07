
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int mp_cache_entries_size; int * mp_cache_entries; } ;
typedef int cache_entry ;


 int TRACE_IN (int (*) (struct configuration_entry*,char const*,int **,int **)) ;
 int TRACE_OUT (int (*) (struct configuration_entry*,char const*,int **,int **)) ;
 int * bsearch (char const*,int *,int,int,scalar_t__ (*) (char const*,int *)) ;
 scalar_t__ configuration_entry_cache_mp_part_cmp (char const*,int *) ;

int
configuration_entry_find_mp_cache_entries(
 struct configuration_entry *config_entry, const char *mp_name,
 cache_entry **start, cache_entry **finish)
{
 cache_entry *result;

 TRACE_IN(configuration_entry_find_mp_cache_entries);
 result = bsearch(mp_name, config_entry->mp_cache_entries,
  config_entry->mp_cache_entries_size,
  sizeof(cache_entry), configuration_entry_cache_mp_part_cmp);

 if (result == ((void*)0)) {
  TRACE_OUT(configuration_entry_find_mp_cache_entries);
  return (-1);
 }

 *start = result;
 *finish = result + 1;

 while (*start != config_entry->mp_cache_entries) {
     if (configuration_entry_cache_mp_part_cmp(mp_name, *start - 1) == 0)
  *start = *start - 1;
     else
  break;
 }

 while (*finish != config_entry->mp_cache_entries +
  config_entry->mp_cache_entries_size) {

     if (configuration_entry_cache_mp_part_cmp(
  mp_name, *finish) == 0)
      *finish = *finish + 1;
     else
  break;
 }

 TRACE_OUT(configuration_entry_find_mp_cache_entries);
 return (0);
}
