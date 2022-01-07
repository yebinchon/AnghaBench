
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_entry {int index; } ;
struct device_entry {int flags; } ;


 int HR_DEVICE_IMMUTABLE ;
 int TAILQ_REMOVE (int *,struct disk_entry*,int ) ;
 int assert (int ) ;
 int device_entry_delete (struct device_entry*) ;
 struct device_entry* device_find_by_index (int ) ;
 int disk_tbl ;
 int free (struct disk_entry*) ;
 int link ;

__attribute__((used)) static void
disk_entry_delete(struct disk_entry *entry)
{
 struct device_entry *devEntry;

 assert(entry != ((void*)0));
 TAILQ_REMOVE(&disk_tbl, entry, link);

 devEntry = device_find_by_index(entry->index);

 free(entry);






 if (devEntry != ((void*)0) &&
     (devEntry->flags & HR_DEVICE_IMMUTABLE) == HR_DEVICE_IMMUTABLE)
  device_entry_delete(devEntry);
}
