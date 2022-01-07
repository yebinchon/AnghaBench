
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint_entry {int count; int entry; } ;
struct fingerprint {int map; struct fingerprint_entry* entries; } ;


 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,unsigned int) ;
 struct fingerprint_entry* hashmap_get_entry (int *,struct fingerprint_entry*,struct fingerprint_entry*,int *) ;
 int hashmap_init (int *,int *,int *,int) ;
 scalar_t__ isspace (char const) ;
 unsigned int tolower (char const) ;
 struct fingerprint_entry* xcalloc (int,int) ;

__attribute__((used)) static void get_fingerprint(struct fingerprint *result,
       const char *line_begin,
       const char *line_end)
{
 unsigned int hash, c0 = 0, c1;
 const char *p;
 int max_map_entry_count = 1 + line_end - line_begin;
 struct fingerprint_entry *entry = xcalloc(max_map_entry_count,
  sizeof(struct fingerprint_entry));
 struct fingerprint_entry *found_entry;

 hashmap_init(&result->map, ((void*)0), ((void*)0), max_map_entry_count);
 result->entries = entry;
 for (p = line_begin; p <= line_end; ++p, c0 = c1) {





  if ((p == line_end) || isspace(*p))
   c1 = 0;
  else
   c1 = tolower(*p);
  hash = c0 | (c1 << 8);

  if (hash == 0)
   continue;
  hashmap_entry_init(&entry->entry, hash);

  found_entry = hashmap_get_entry(&result->map, entry,
                        entry, ((void*)0));
  if (found_entry) {
   found_entry->count += 1;
  } else {
   entry->count = 1;
   hashmap_add(&result->map, &entry->entry);
   ++entry;
  }
 }
}
