
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int policy; } ;
struct configuration_entry {TYPE_1__ positive_cache_params; } ;
struct configuration {int dummy; } ;
typedef enum cache_policy_t { ____Placeholder_cache_policy_t } cache_policy_t ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 int assert (int ) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;

__attribute__((used)) static void
set_positive_policy(struct configuration *config,
 const char *entry_name, enum cache_policy_t policy)
{
 struct configuration_entry *entry;

 TRACE_IN(set_positive_policy);
 assert(entry_name != ((void*)0));

 entry = find_create_entry(config, entry_name);
 assert(entry != ((void*)0));
 entry->positive_cache_params.policy = policy;

 TRACE_OUT(set_positive_policy);
}
