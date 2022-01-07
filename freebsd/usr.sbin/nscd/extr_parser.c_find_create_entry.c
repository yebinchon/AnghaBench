
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int dummy; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (struct configuration_entry* (*) (struct configuration*,char const*)) ;
 int TRACE_OUT (struct configuration_entry* (*) (struct configuration*,char const*)) ;
 int add_configuration_entry (struct configuration*,struct configuration_entry*) ;
 int assert (int) ;
 struct configuration_entry* configuration_find_entry (struct configuration*,char const*) ;
 struct configuration_entry* create_def_configuration_entry (char const*) ;

__attribute__((used)) static struct configuration_entry *
find_create_entry(struct configuration *config,
 const char *entry_name)
{
 struct configuration_entry *entry = ((void*)0);
 int res;

 TRACE_IN(find_create_entry);
 entry = configuration_find_entry(config, entry_name);
 if (entry == ((void*)0)) {
  entry = create_def_configuration_entry(entry_name);
  assert( entry != ((void*)0));
  res = add_configuration_entry(config, entry);
  assert(res == 0);
 }

 TRACE_OUT(find_create_entry);
 return (entry);
}
