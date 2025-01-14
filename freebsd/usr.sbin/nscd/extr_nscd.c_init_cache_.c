
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int entry_name; } ;
struct TYPE_8__ {TYPE_3__ cep; } ;
struct TYPE_5__ {int entry_name; } ;
struct TYPE_6__ {TYPE_1__ cep; } ;
struct configuration_entry {scalar_t__ positive_cache_entry; scalar_t__ negative_cache_entry; TYPE_4__ negative_cache_params; TYPE_2__ positive_cache_params; } ;
struct configuration {int dummy; } ;
struct cache_params {int get_time_func; } ;
struct cache_entry_params {int dummy; } ;
typedef int cache ;


 scalar_t__ INVALID_CACHE_ENTRY ;
 int LOG_MSG_2 (char*,char*) ;
 int TRACE_IN (int (*) (struct configuration*)) ;
 int TRACE_OUT (int (*) (struct configuration*)) ;
 int assert (int) ;
 size_t configuration_get_entries_size (struct configuration*) ;
 struct configuration_entry* configuration_get_entry (struct configuration*,size_t) ;
 void* find_cache_entry (int ,int ) ;
 int get_time_func ;
 int init_cache (struct cache_params*) ;
 int memset (struct cache_params*,int ,int) ;
 int register_cache_entry (int ,struct cache_entry_params*) ;

__attribute__((used)) static cache
init_cache_(struct configuration *config)
{
 struct cache_params params;
 cache retval;

 struct configuration_entry *config_entry;
 size_t size, i;
 int res;

 TRACE_IN(init_cache_);

 memset(&params, 0, sizeof(struct cache_params));
 params.get_time_func = get_time_func;
 retval = init_cache(&params);

 size = configuration_get_entries_size(config);
 for (i = 0; i < size; ++i) {
  config_entry = configuration_get_entry(config, i);




  res = register_cache_entry(retval, (struct cache_entry_params *)
   &config_entry->positive_cache_params);
  config_entry->positive_cache_entry = find_cache_entry(retval,
   config_entry->positive_cache_params.cep.entry_name);
  assert(config_entry->positive_cache_entry !=
   INVALID_CACHE_ENTRY);

  res = register_cache_entry(retval, (struct cache_entry_params *)
   &config_entry->negative_cache_params);
  config_entry->negative_cache_entry = find_cache_entry(retval,
   config_entry->negative_cache_params.cep.entry_name);
  assert(config_entry->negative_cache_entry !=
   INVALID_CACHE_ENTRY);
 }

 LOG_MSG_2("cache", "cache was successfully initialized");
 TRACE_OUT(init_cache_);
 return (retval);
}
