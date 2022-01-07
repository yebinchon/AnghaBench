
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {scalar_t__ index; void* status; } ;
struct kld_file_stat {int version; } ;
struct kinfo_proc {int dummy; } ;
typedef int stat ;
typedef void* int32_t ;


 int HRDBG (char*,scalar_t__) ;
 int KERN_PROC_PID ;
 scalar_t__ NO_PID ;
 scalar_t__ SRS_INVALID ;
 int assert (int ) ;
 int * hr_kd ;
 int kinfo_proc_to_swrun_entry (struct kinfo_proc*,struct swrun_entry*) ;
 int kld_file_stat_to_swrun (struct kld_file_stat*,struct swrun_entry*) ;
 int kldstat (scalar_t__,struct kld_file_stat*) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,scalar_t__,int*) ;

__attribute__((used)) static void
fetch_swrun_entry(struct swrun_entry *entry)
{
 struct kinfo_proc *plist;
 int nproc;
 struct kld_file_stat stat;

 assert(entry != ((void*)0));

 if (entry->index >= NO_PID + 1) {






  stat.version = sizeof(stat);
  if (kldstat(entry->index - NO_PID - 1, &stat) == -1) {




    HRDBG("missing item with kid=%d",
        entry->index - NO_PID - 1);
   entry->status = (int32_t)SRS_INVALID;
  } else
   kld_file_stat_to_swrun(&stat, entry);

 } else {

  assert(hr_kd != ((void*)0));
  plist = kvm_getprocs(hr_kd, KERN_PROC_PID,
      entry->index - 1, &nproc);
  if (plist == ((void*)0) || nproc != 1) {
   HRDBG("missing item with PID=%d", entry->index - 1);
   entry->status = (int32_t)SRS_INVALID;
  } else
   kinfo_proc_to_swrun_entry(plist, entry);
 }
}
