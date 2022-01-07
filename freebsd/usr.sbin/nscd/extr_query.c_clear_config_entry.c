
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {size_t mp_cache_entries_size; int ** mp_cache_entries; int * negative_cache_entry; int * positive_cache_entry; } ;


 int CELT_MULTIPART ;
 int CELT_NEGATIVE ;
 int CELT_POSITIVE ;
 int CTT_CLEAR ;
 int TRACE_IN (void (*) (struct configuration_entry*)) ;
 int TRACE_OUT (void (*) (struct configuration_entry*)) ;
 int configuration_lock_entry (struct configuration_entry*,int ) ;
 int configuration_unlock_entry (struct configuration_entry*,int ) ;
 int transform_cache_entry (int *,int ) ;

__attribute__((used)) static void
clear_config_entry(struct configuration_entry *config_entry)
{
 size_t i;

 TRACE_IN(clear_config_entry);
 configuration_lock_entry(config_entry, CELT_POSITIVE);
 if (config_entry->positive_cache_entry != ((void*)0))
  transform_cache_entry(
   config_entry->positive_cache_entry,
   CTT_CLEAR);
 configuration_unlock_entry(config_entry, CELT_POSITIVE);

 configuration_lock_entry(config_entry, CELT_NEGATIVE);
 if (config_entry->negative_cache_entry != ((void*)0))
  transform_cache_entry(
   config_entry->negative_cache_entry,
   CTT_CLEAR);
 configuration_unlock_entry(config_entry, CELT_NEGATIVE);

 configuration_lock_entry(config_entry, CELT_MULTIPART);
 for (i = 0; i < config_entry->mp_cache_entries_size; ++i)
  transform_cache_entry(
   config_entry->mp_cache_entries[i],
   CTT_CLEAR);
 configuration_unlock_entry(config_entry, CELT_MULTIPART);

 TRACE_OUT(clear_config_entry);
}
