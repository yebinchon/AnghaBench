
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_flags; char* f_mntfromname; int f_mntonname; } ;
struct fs_entry {int index; int lastPartialBackupDate; int lastFullBackupDate; int storageIndex; int bootable; int access; int type; void* remoteMountPoint; int flags; } ;
typedef int int32_t ;


 int FS_READ_ONLY ;
 int FS_READ_WRITE ;
 int HRDBG (char*,int ) ;
 int HR_FS_FOUND ;
 int MNT_LOCAL ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int TRUTH_MK (int) ;
 int assert (int) ;
 struct fs_entry* fs_entry_create (int ) ;
 struct fs_entry* fs_find_by_name (int ) ;
 int fs_get_type (struct statfs const*) ;
 int handle_partition_fs_index (char*,int ) ;
 int memset (int ,int ,int) ;
 void* strdup (char*) ;

void
fs_tbl_process_statfs_entry(const struct statfs *fs_p, int32_t storage_idx)
{
 struct fs_entry *entry;

 assert(fs_p != 0);

 HRDBG("for hrStorageEntry::index %d", storage_idx);

 if (fs_p == ((void*)0))
  return;

 if ((entry = fs_find_by_name(fs_p->f_mntonname)) != ((void*)0) ||
     (entry = fs_entry_create(fs_p->f_mntonname)) != ((void*)0)) {
  entry->flags |= HR_FS_FOUND;

  if (!(fs_p->f_flags & MNT_LOCAL)) {

   entry->remoteMountPoint = strdup(fs_p->f_mntfromname);


  } else {
   entry->remoteMountPoint = strdup("");

  }

  entry->type = fs_get_type(fs_p);

  if ((fs_p->f_flags & MNT_RDONLY) == MNT_RDONLY)
   entry->access = FS_READ_ONLY;
  else
   entry->access = FS_READ_WRITE;


  entry->bootable = TRUTH_MK((fs_p->f_flags & MNT_ROOTFS)
      == MNT_ROOTFS);

  entry->storageIndex = storage_idx;


  memset(entry->lastFullBackupDate, 0,
      sizeof(entry->lastFullBackupDate));


  memset(entry->lastPartialBackupDate, 0,
      sizeof(entry->lastPartialBackupDate));

  handle_partition_fs_index(fs_p->f_mntfromname, entry->index);
 }
}
