
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {struct configuration_entry* entry_name; } ;
struct TYPE_12__ {TYPE_5__ cep; } ;
struct TYPE_9__ {struct configuration_entry* entry_name; } ;
struct TYPE_10__ {TYPE_3__ cep; } ;
struct TYPE_7__ {struct configuration_entry* entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct configuration_entry {struct configuration_entry* mp_cache_entries; TYPE_6__ mp_cache_params; TYPE_4__ negative_cache_params; TYPE_2__ positive_cache_params; struct configuration_entry* name; int mp_cache_lock; int negative_cache_lock; int positive_cache_lock; } ;


 int TRACE_IN (void (*) (struct configuration_entry*)) ;
 int TRACE_OUT (void (*) (struct configuration_entry*)) ;
 int assert (int ) ;
 int free (struct configuration_entry*) ;
 int pthread_mutex_destroy (int *) ;

void
destroy_configuration_entry(struct configuration_entry *entry)
{
 TRACE_IN(destroy_configuration_entry);
 assert(entry != ((void*)0));
 pthread_mutex_destroy(&entry->positive_cache_lock);
 pthread_mutex_destroy(&entry->negative_cache_lock);
 pthread_mutex_destroy(&entry->mp_cache_lock);
 free(entry->name);
 free(entry->positive_cache_params.cep.entry_name);
 free(entry->negative_cache_params.cep.entry_name);
 free(entry->mp_cache_params.cep.entry_name);
 free(entry->mp_cache_entries);
 free(entry);
 TRACE_OUT(destroy_configuration_entry);
}
