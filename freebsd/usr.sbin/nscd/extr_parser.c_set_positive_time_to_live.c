
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_4__ {int max_lifetime; } ;
struct TYPE_3__ {int max_lifetime; } ;
struct configuration_entry {TYPE_2__ mp_cache_params; TYPE_1__ positive_cache_params; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 int assert (int) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;
 int memcpy (int *,struct timeval*,int) ;
 int memset (struct timeval*,int ,int) ;

__attribute__((used)) static void
set_positive_time_to_live(struct configuration *config,
 const char *entry_name, int ttl)
{
 struct configuration_entry *entry;
 struct timeval lifetime;

 TRACE_IN(set_positive_time_to_live);
 assert(ttl >= 0);
 assert(entry_name != ((void*)0));
 memset(&lifetime, 0, sizeof(struct timeval));
 lifetime.tv_sec = ttl;

 entry = find_create_entry(config, entry_name);
 memcpy(&entry->positive_cache_params.max_lifetime,
  &lifetime, sizeof(struct timeval));
 memcpy(&entry->mp_cache_params.max_lifetime,
  &lifetime, sizeof(struct timeval));

 TRACE_OUT(set_positive_time_to_live);
}
