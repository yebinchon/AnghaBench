
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int mp_cache_entries_size; int * mp_cache_entries; } ;
typedef int cache_entry ;


 int TRACE_IN (int (*) (struct configuration_entry*,int )) ;
 int TRACE_OUT (int (*) (struct configuration_entry*,int )) ;
 int assert (int ) ;
 int configuration_entry_cache_mp_sort_cmp ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int qsort (int *,int,int,int ) ;

int
configuration_entry_add_mp_cache_entry(struct configuration_entry *config_entry,
 cache_entry c_entry)
{
 cache_entry *new_mp_entries, *old_mp_entries;

 TRACE_IN(configuration_entry_add_mp_cache_entry);
 ++config_entry->mp_cache_entries_size;
 new_mp_entries = malloc(sizeof(*new_mp_entries) *
  config_entry->mp_cache_entries_size);
 assert(new_mp_entries != ((void*)0));
 new_mp_entries[0] = c_entry;

 if (config_entry->mp_cache_entries_size - 1 > 0) {
  memcpy(new_mp_entries + 1,
      config_entry->mp_cache_entries,
      (config_entry->mp_cache_entries_size - 1) *
      sizeof(cache_entry));
 }

 old_mp_entries = config_entry->mp_cache_entries;
 config_entry->mp_cache_entries = new_mp_entries;
 free(old_mp_entries);

 qsort(config_entry->mp_cache_entries,
  config_entry->mp_cache_entries_size,
  sizeof(cache_entry),
  configuration_entry_cache_mp_sort_cmp);

 TRACE_OUT(configuration_entry_add_mp_cache_entry);
 return (0);
}
