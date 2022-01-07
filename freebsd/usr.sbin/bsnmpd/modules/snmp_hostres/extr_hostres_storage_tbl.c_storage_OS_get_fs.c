
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct storage_entry {int allocationUnits; int size; int used; int index; scalar_t__ allocationFailures; int type; int flags; } ;
struct statfs {int dummy; } ;
typedef int fs_string ;
struct TYPE_7__ {char* f_mntonname; char* f_fstypename; char* f_mntfromname; int f_bsize; int f_blocks; int f_bfree; } ;


 int HRDBG (char*,int) ;
 int HR_STORAGE_FOUND ;
 int INT_MAX ;
 int LOG_ERR ;
 int MNT_NOWAIT ;
 int SE_DESC_MLEN ;
 int assert (int ) ;
 TYPE_1__* fs_buf ;
 int fs_buf_count ;
 int fs_get_type (TYPE_1__*) ;
 int fs_tbl_post_refresh () ;
 int fs_tbl_pre_refresh () ;
 int fs_tbl_process_statfs_entry (TYPE_1__*,int ) ;
 int getfsstat (TYPE_1__*,int,int ) ;
 TYPE_1__* reallocf (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 struct storage_entry* storage_entry_create (char*) ;
 struct storage_entry* storage_find_by_name (char*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
storage_OS_get_fs(void)
{
 struct storage_entry *entry;
 uint64_t size, used;
 int i, mounted_fs_count, units;
 char fs_string[SE_DESC_MLEN];

 if ((mounted_fs_count = getfsstat(((void*)0), 0, MNT_NOWAIT)) < 0) {
  syslog(LOG_ERR, "hrStorageTable: getfsstat() failed: %m");
  return;
 }

 if (mounted_fs_count != (int)fs_buf_count || fs_buf == ((void*)0)) {
  fs_buf_count = mounted_fs_count;
  fs_buf = reallocf(fs_buf, fs_buf_count * sizeof(struct statfs));
  if (fs_buf == ((void*)0)) {
   fs_buf_count = 0;
   assert(0);
   return;
  }
 }

 if ((mounted_fs_count = getfsstat(fs_buf,
     fs_buf_count * sizeof(struct statfs), MNT_NOWAIT)) < 0) {
  syslog(LOG_ERR, "hrStorageTable: getfsstat() failed: %m");
  return;
 }

 HRDBG("got %d mounted FS", mounted_fs_count);

 fs_tbl_pre_refresh();

 for (i = 0; i < mounted_fs_count; i++) {
  snprintf(fs_string, sizeof(fs_string),
      "%s, type: %s, dev: %s", fs_buf[i].f_mntonname,
      fs_buf[i].f_fstypename, fs_buf[i].f_mntfromname);

  entry = storage_find_by_name(fs_string);
  if (entry == ((void*)0))
   entry = storage_entry_create(fs_string);

  assert (entry != ((void*)0));
  if (entry == ((void*)0))
   return;

  entry->flags |= HR_STORAGE_FOUND;
  entry->type = fs_get_type(&fs_buf[i]);

  units = fs_buf[i].f_bsize;
  size = fs_buf[i].f_blocks;
  used = fs_buf[i].f_blocks - fs_buf[i].f_bfree;
  while (size > INT_MAX) {
   units <<= 1;
   size >>= 1;
   used >>= 1;
  }
  entry->allocationUnits = units;
  entry->size = size;
  entry->used = used;

  entry->allocationFailures = 0;


  fs_tbl_process_statfs_entry(&fs_buf[i], entry->index);
 }

 fs_tbl_post_refresh();
}
