
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrun_entry {scalar_t__ index; void* status; } ;
struct kld_file_stat {int version; int refs; int name; int id; } ;
struct kinfo_proc {int dummy; } ;
typedef int stat ;
typedef void* int32_t ;


 scalar_t__ EBUSY ;
 scalar_t__ ESRCH ;
 int HRDBG (char*,scalar_t__) ;
 scalar_t__ IS_KERNPROC (struct kinfo_proc*) ;
 int KERN_PROC_PID ;
 int LOG_ERR ;
 scalar_t__ NO_PID ;
 int SIGKILL ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOT_WRITEABLE ;
 int SNMP_ERR_RES_UNAVAIL ;
 scalar_t__ SRS_INVALID ;
 scalar_t__ SWOSIndex ;
 int assert (int ) ;
 scalar_t__ errno ;
 int * hr_kd ;
 scalar_t__ kill (scalar_t__,int ) ;
 int kldstat (scalar_t__,struct kld_file_stat*) ;
 int kldunload (int ) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,scalar_t__,int*) ;
 int syslog (int ,char*,scalar_t__,...) ;

__attribute__((used)) static int
invalidate_swrun_entry(struct swrun_entry *entry, int commit)
{
 struct kinfo_proc *plist;
 int nproc;
 struct kld_file_stat stat;

 assert(entry != ((void*)0));

 if (entry->index >= NO_PID + 1) {

  HRDBG("atempt to unload KLD %d",
      entry->index - NO_PID - 1);

  if (entry->index == SWOSIndex) {

   return (SNMP_ERR_NOT_WRITEABLE);
  }

  stat.version = sizeof(stat);
  if (kldstat(entry->index - NO_PID - 1, &stat) == -1) {





   HRDBG("missing item with kid=%d",
       entry->index - NO_PID - 1);
   entry->status = (int32_t)SRS_INVALID;
   return (SNMP_ERR_NOERROR);
  }






  if (!commit) {
   if (stat.refs > 1)
    return (SNMP_ERR_NOT_WRITEABLE);
   return (SNMP_ERR_NOERROR);
  }
  if (kldunload(stat.id) == -1) {
   syslog(LOG_ERR,"kldunload for %d/%s failed: %m",
       stat.id, stat.name);
   if (errno == EBUSY)
    return (SNMP_ERR_NOT_WRITEABLE);
   else
    return (SNMP_ERR_RES_UNAVAIL);
  }
 } else {

  assert(hr_kd != ((void*)0));

  plist = kvm_getprocs(hr_kd, KERN_PROC_PID,
      entry->index - 1, &nproc);
  if (plist == ((void*)0) || nproc != 1) {
   HRDBG("missing item with PID=%d", entry->index - 1);
   entry->status = (int32_t)SRS_INVALID;
   return (SNMP_ERR_NOERROR);
  }
  if (IS_KERNPROC(plist)) {

   return (SNMP_ERR_NOT_WRITEABLE);
  }
  if (kill(entry->index - 1, commit ? SIGKILL : 0) < 0) {
   syslog(LOG_ERR,"kill (%d, SIGKILL) failed: %m",
       entry->index - 1);
   if (errno == ESRCH) {

    entry->status = (int32_t)SRS_INVALID;
    return (SNMP_ERR_NOERROR);
   }
   return (SNMP_ERR_GENERR);
  }
 }
 return (SNMP_ERR_NOERROR);
}
