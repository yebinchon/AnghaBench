
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {int flags; } ;
struct kld_file_stat {int version; scalar_t__ id; } ;


 int HR_SWRUN_FOUND ;
 int LOG_ERR ;
 scalar_t__ NO_PID ;
 int kld_file_stat_to_swrun (struct kld_file_stat*,struct swrun_entry*) ;
 int kldnext (int) ;
 scalar_t__ kldstat (int,struct kld_file_stat*) ;
 struct swrun_entry* swrun_entry_create (scalar_t__) ;
 struct swrun_entry* swrun_entry_find_by_index (scalar_t__) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
swrun_OS_get_kinfo(void)
{
 int fileid;
 struct swrun_entry *entry;
 struct kld_file_stat stat;

 for (fileid = kldnext(0); fileid > 0; fileid = kldnext(fileid)) {
  stat.version = sizeof(struct kld_file_stat);
  if (kldstat(fileid, &stat) < 0) {
   syslog(LOG_ERR, "kldstat() failed: %m");
   continue;
  }






  entry = swrun_entry_find_by_index(NO_PID + 1 + stat.id);
  if (entry == ((void*)0)) {

   entry = swrun_entry_create(NO_PID + 1 + stat.id);
   if (entry == ((void*)0))
    continue;
  }
  entry->flags |= HR_SWRUN_FOUND;

  kld_file_stat_to_swrun(&stat, entry);
 }
}
