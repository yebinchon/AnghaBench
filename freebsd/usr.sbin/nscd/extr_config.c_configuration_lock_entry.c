
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int mp_cache_lock; int negative_cache_lock; int positive_cache_lock; } ;
typedef enum config_entry_lock_type { ____Placeholder_config_entry_lock_type } config_entry_lock_type ;





 int TRACE_IN (void (*) (struct configuration_entry*,int)) ;
 int TRACE_OUT (void (*) (struct configuration_entry*,int)) ;
 int assert (int ) ;
 int pthread_mutex_lock (int *) ;

void
configuration_lock_entry(struct configuration_entry *entry,
 enum config_entry_lock_type lock_type)
{
 TRACE_IN(configuration_lock_entry);
 assert(entry != ((void*)0));

 switch (lock_type) {
 case 128:
  pthread_mutex_lock(&entry->positive_cache_lock);
  break;
 case 129:
  pthread_mutex_lock(&entry->negative_cache_lock);
  break;
 case 130:
  pthread_mutex_lock(&entry->mp_cache_lock);
  break;
 default:

  break;
 }
 TRACE_OUT(configuration_lock_entry);
}
