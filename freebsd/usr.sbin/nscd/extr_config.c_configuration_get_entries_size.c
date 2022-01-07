
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {size_t entries_size; } ;


 int TRACE_IN (size_t (*) (struct configuration*)) ;
 int TRACE_OUT (size_t (*) (struct configuration*)) ;
 int assert (int ) ;

size_t
configuration_get_entries_size(struct configuration *config)
{
 TRACE_IN(configuration_get_entries_size);
 assert(config != ((void*)0));
 TRACE_OUT(configuration_get_entries_size);
 return (config->entries_size);
}
