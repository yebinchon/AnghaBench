
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int enabled; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct configuration*,char const*,int)) ;
 int TRACE_OUT (void (*) (struct configuration*,char const*,int)) ;
 struct configuration_entry* find_create_entry (struct configuration*,char const*) ;

__attribute__((used)) static void
enable_cache(struct configuration *config, const char *entry_name, int flag)
{
 struct configuration_entry *entry;

 TRACE_IN(enable_cache);
 entry = find_create_entry(config, entry_name);
 entry->enabled = flag;
 TRACE_OUT(enable_cache);
}
