
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_entry {int size; int flags; } ;
typedef int off_t ;
typedef int int32_t ;
typedef int daddr_t ;


 int HRDBG (char*,char const*) ;
 int HR_PARTITION_FOUND ;
 int INT_MAX ;
 int assert (int) ;
 struct partition_entry* partition_entry_create (int ,char const*) ;
 struct partition_entry* partition_entry_find_by_name (char const*) ;

__attribute__((used)) static void
handle_chunk(int32_t ds_index, const char *chunk_name, off_t chunk_size)
{
 struct partition_entry *entry;
 daddr_t k_size;

 assert(chunk_name != ((void*)0));
 assert(chunk_name[0] != '\0');
 if (chunk_name == ((void*)0) || chunk_name[0] == '\0')
  return;

 HRDBG("ANALYZE chunk %s", chunk_name);

 if ((entry = partition_entry_find_by_name(chunk_name)) == ((void*)0))
  if ((entry = partition_entry_create(ds_index,
      chunk_name)) == ((void*)0))
   return;

 entry->flags |= HR_PARTITION_FOUND;


 k_size = chunk_size / 1024;
 entry->size = (k_size > (off_t)INT_MAX ? INT_MAX : k_size);
}
