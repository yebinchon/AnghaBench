
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_entry {int fs_Index; } ;
typedef int int32_t ;


 int HRDBG (char*,char const*,...) ;
 struct partition_entry* partition_entry_find_by_label (char const*) ;

void
handle_partition_fs_index(const char *name, int32_t fs_idx)
{
 struct partition_entry *entry;

 if ((entry = partition_entry_find_by_label(name)) == ((void*)0)) {
  HRDBG("%s IS MISSING from hrPartitionTable", name);
  return;
 }
 HRDBG("%s [FS index = %d] IS in hrPartitionTable", name, fs_idx);
 entry->fs_Index = fs_idx;
}
