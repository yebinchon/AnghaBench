
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {int flags; } ;
struct kinfo_proc {scalar_t__ ki_pid; } ;
typedef scalar_t__ int32_t ;


 int HR_SWRUN_FOUND ;
 int KERN_PROC_ALL ;
 int LOG_ERR ;
 int hr_kd ;
 int kinfo_proc_to_swrun_entry (struct kinfo_proc*,struct swrun_entry*) ;
 struct kinfo_proc* kvm_getprocs (int ,int ,int ,int*) ;
 struct swrun_entry* swrun_entry_create (scalar_t__) ;
 struct swrun_entry* swrun_entry_find_by_index (scalar_t__) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
swrun_OS_get_procs(void)
{
 struct kinfo_proc *plist, *kp;
 int i;
 int nproc;
 struct swrun_entry *entry;

 plist = kvm_getprocs(hr_kd, KERN_PROC_ALL, 0, &nproc);
 if (plist == ((void*)0) || nproc < 0) {
  syslog(LOG_ERR, "kvm_getprocs() failed: %m");
  return;
 }
 for (i = 0, kp = plist; i < nproc; i++, kp++) {





  entry = swrun_entry_find_by_index((int32_t)kp->ki_pid + 1);
  if (entry == ((void*)0)) {

   entry = swrun_entry_create((int32_t)kp->ki_pid + 1);
   if (entry == ((void*)0))
    continue;
  }
  entry->flags |= HR_SWRUN_FOUND;

  kinfo_proc_to_swrun_entry(kp, entry);
 }
}
