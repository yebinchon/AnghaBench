
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration_entry {int * name; } ;
struct configuration {int entries_size; int entries_capacity; struct configuration_entry** entries; } ;


 int TRACE_IN (int (*) (struct configuration*,struct configuration_entry*)) ;
 int TRACE_OUT (int (*) (struct configuration*,struct configuration_entry*)) ;
 int assert (int ) ;
 struct configuration_entry** calloc (int,int) ;
 int configuration_entry_sort_cmp ;
 int * configuration_find_entry (struct configuration*,int *) ;
 int free (struct configuration_entry**) ;
 int memcpy (struct configuration_entry**,struct configuration_entry**,int) ;
 int qsort (struct configuration_entry**,int,int,int ) ;

int
add_configuration_entry(struct configuration *config,
 struct configuration_entry *entry)
{
 TRACE_IN(add_configuration_entry);
 assert(entry != ((void*)0));
 assert(entry->name != ((void*)0));
 if (configuration_find_entry(config, entry->name) != ((void*)0)) {
  TRACE_OUT(add_configuration_entry);
  return (-1);
 }

 if (config->entries_size == config->entries_capacity) {
  struct configuration_entry **new_entries;

  config->entries_capacity *= 2;
  new_entries = calloc(config->entries_capacity,
   sizeof(*new_entries));
  assert(new_entries != ((void*)0));
  memcpy(new_entries, config->entries,
   sizeof(struct configuration_entry *) *
          config->entries_size);

  free(config->entries);
  config->entries = new_entries;
 }

 config->entries[config->entries_size++] = entry;
 qsort(config->entries, config->entries_size,
  sizeof(struct configuration_entry *),
  configuration_entry_sort_cmp);

 TRACE_OUT(add_configuration_entry);
 return (0);
}
