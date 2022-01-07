
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int dummy; } ;
struct configuration {size_t entries_size; struct configuration_entry** entries; } ;


 int TRACE_IN (struct configuration_entry* (*) (struct configuration*,size_t)) ;
 int TRACE_OUT (struct configuration_entry* (*) (struct configuration*,size_t)) ;
 int assert (int) ;

struct configuration_entry *
configuration_get_entry(struct configuration *config, size_t index)
{
 TRACE_IN(configuration_get_entry);
 assert(config != ((void*)0));
 assert(index < config->entries_size);
 TRACE_OUT(configuration_get_entry);
 return (config->entries[index]);
}
