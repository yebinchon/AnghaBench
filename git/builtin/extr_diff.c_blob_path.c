
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array_entry {char const* path; char const* name; } ;



__attribute__((used)) static const char *blob_path(struct object_array_entry *entry)
{
 return entry->path ? entry->path : entry->name;
}
