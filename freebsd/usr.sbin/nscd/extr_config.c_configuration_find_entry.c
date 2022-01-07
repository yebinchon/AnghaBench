
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int dummy; } ;
struct configuration {int entries_size; int entries; } ;


 int TRACE_IN (struct configuration_entry* (*) (struct configuration*,char const*)) ;
 int TRACE_OUT (struct configuration_entry* (*) (struct configuration*,char const*)) ;
 struct configuration_entry** bsearch (char const*,int ,int ,int,int ) ;
 int configuration_entry_cmp ;

struct configuration_entry *
configuration_find_entry(struct configuration *config,
 const char *name)
{
 struct configuration_entry **retval;

 TRACE_IN(configuration_find_entry);

 retval = bsearch(name, config->entries, config->entries_size,
  sizeof(struct configuration_entry *), configuration_entry_cmp);
 TRACE_OUT(configuration_find_entry);

 return ((retval != ((void*)0)) ? *retval : ((void*)0));
}
