
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int confidence_threshold; } ;
struct configuration_entry {TYPE_1__ negative_cache_params; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int assert (int) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;
 int set_negative_conf_thresh ;

__attribute__((used)) static void
set_negative_confidence_threshold(struct configuration *config,
 const char *entry_name, int conf_thresh)
{
 struct configuration_entry *entry;

 TRACE_IN(set_negative_conf_thresh);
 assert(conf_thresh > 0);
 assert(entry_name != ((void*)0));
 entry = find_create_entry(config, entry_name);
 assert(entry != ((void*)0));
 entry->negative_cache_params.confidence_threshold = conf_thresh;
 TRACE_OUT(set_negative_conf_thresh);
}
