
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int * negative_cache_entry; int * positive_cache_entry; } ;
typedef int cache_entry ;


 int CELT_MULTIPART ;
 int CELT_NEGATIVE ;
 int CELT_POSITIVE ;
 int CTT_CLEAR ;
 int KPPT_LEFT ;
 int TRACE_IN (void (*) (struct configuration_entry*,char const*,size_t)) ;
 int TRACE_OUT (void (*) (struct configuration_entry*,char const*,size_t)) ;
 scalar_t__ configuration_entry_find_mp_cache_entries (struct configuration_entry*,char const*,int **,int **) ;
 int configuration_lock_entry (struct configuration_entry*,int ) ;
 int configuration_unlock_entry (struct configuration_entry*,int ) ;
 int transform_cache_entry (int ,int ) ;
 int transform_cache_entry_part (int *,int ,char const*,size_t,int ) ;

__attribute__((used)) static void
clear_config_entry_part(struct configuration_entry *config_entry,
 const char *eid_str, size_t eid_str_length)
{
 cache_entry *start, *finish, *mp_entry;
 TRACE_IN(clear_config_entry_part);
 configuration_lock_entry(config_entry, CELT_POSITIVE);
 if (config_entry->positive_cache_entry != ((void*)0))
  transform_cache_entry_part(
   config_entry->positive_cache_entry,
   CTT_CLEAR, eid_str, eid_str_length, KPPT_LEFT);
 configuration_unlock_entry(config_entry, CELT_POSITIVE);

 configuration_lock_entry(config_entry, CELT_NEGATIVE);
 if (config_entry->negative_cache_entry != ((void*)0))
  transform_cache_entry_part(
   config_entry->negative_cache_entry,
   CTT_CLEAR, eid_str, eid_str_length, KPPT_LEFT);
 configuration_unlock_entry(config_entry, CELT_NEGATIVE);

 configuration_lock_entry(config_entry, CELT_MULTIPART);
 if (configuration_entry_find_mp_cache_entries(config_entry,
  eid_str, &start, &finish) == 0) {
  for (mp_entry = start; mp_entry != finish; ++mp_entry)
   transform_cache_entry(*mp_entry, CTT_CLEAR);
 }
 configuration_unlock_entry(config_entry, CELT_MULTIPART);

 TRACE_OUT(clear_config_entry_part);
}
