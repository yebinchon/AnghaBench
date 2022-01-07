
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int perform_actual_lookups; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 int assert (int ) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;

__attribute__((used)) static void
set_perform_actual_lookups(struct configuration *config,
 const char *entry_name, int flag)
{
 struct configuration_entry *entry;

 TRACE_IN(set_perform_actual_lookups);
 assert(entry_name != ((void*)0));

 entry = find_create_entry(config, entry_name);
 assert(entry != ((void*)0));
 entry->perform_actual_lookups = flag;

 TRACE_OUT(set_perform_actual_lookups);
}
