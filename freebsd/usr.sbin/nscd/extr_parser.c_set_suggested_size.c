
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cache_entries_size; } ;
struct TYPE_3__ {int cache_entries_size; } ;
struct configuration_entry {TYPE_2__ negative_cache_params; TYPE_1__ positive_cache_params; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 int assert (int) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;

__attribute__((used)) static void
set_suggested_size(struct configuration *config,
 const char *entry_name, int size)
{
 struct configuration_entry *entry;

 TRACE_IN(set_suggested_size);
 assert(config != ((void*)0));
 assert(entry_name != ((void*)0));
 assert(size > 0);

 entry = find_create_entry(config, entry_name);
 assert(entry != ((void*)0));
 entry->positive_cache_params.cache_entries_size = size;
 entry->negative_cache_params.cache_entries_size = size;

 TRACE_OUT(set_suggested_size);
}
