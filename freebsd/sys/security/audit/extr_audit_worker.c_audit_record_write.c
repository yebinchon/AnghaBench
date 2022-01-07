
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct timeval {int dummy; } ;
struct statfs {long f_bfree; int f_blocks; unsigned long f_bsize; } ;
struct mount {struct statfs mnt_stat; } ;
typedef int off_t ;
struct TYPE_4__ {int af_filesz; } ;
struct TYPE_3__ {int aq_minfree; } ;


 long AUDIT_HARD_LIMIT_FREE_BLOCKS ;
 int AUDIT_TRIGGER_LOW_SPACE ;
 int AUDIT_TRIGGER_NO_SPACE ;
 int AUDIT_TRIGGER_ROTATE_KERNEL ;
 int AUDIT_WORKER_LOCK_ASSERT () ;
 int EINVAL ;
 int ENOSPC ;
 int IO_APPEND ;
 int IO_UNIT ;
 int MAX_AUDIT_RECORD_SIZE ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VFS_STATFS (struct mount*,struct statfs*) ;
 scalar_t__ audit_fail_stop ;
 int audit_file_rotate_wait ;
 TYPE_2__ audit_fstat ;
 int audit_in_failure ;
 scalar_t__ audit_panic_on_write_fail ;
 int audit_pre_q_len ;
 int audit_q_len ;
 TYPE_1__ audit_qctrl ;
 int audit_send_trigger (int ) ;
 int audit_size ;
 int audit_syscalls_enabled_update () ;
 int audit_trail_suspended ;
 int audit_worker_sync_vp (struct vnode*,struct mount*,char*,...) ;
 int curthread ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;
 int printf (char*,...) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_rdwr (int ,struct vnode*,void*,size_t,int ,int ,int,struct ucred*,int *,int *,int ) ;

__attribute__((used)) static void
audit_record_write(struct vnode *vp, struct ucred *cred, void *data,
    size_t len)
{
 static struct timeval last_lowspace_trigger;
 static struct timeval last_fail;
 static int cur_lowspace_trigger;
 struct statfs *mnt_stat;
 struct mount *mp;
 int error;
 static int cur_fail;
 long temp;

 AUDIT_WORKER_LOCK_ASSERT();

 if (vp == ((void*)0))
  return;

 mp = vp->v_mount;
 if (mp == ((void*)0)) {
  error = EINVAL;
  goto fail;
 }
 error = vfs_busy(mp, 0);
 if (error != 0) {
  mp = ((void*)0);
  goto fail;
 }
 mnt_stat = &mp->mnt_stat;






 error = VFS_STATFS(mp, mnt_stat);
 if (error != 0)
  goto fail;
 if (mnt_stat->f_bfree < AUDIT_HARD_LIMIT_FREE_BLOCKS) {
  error = ENOSPC;
  goto fail_enospc;
 }






 if (audit_qctrl.aq_minfree != 0) {
  temp = mnt_stat->f_blocks / (100 / audit_qctrl.aq_minfree);
  if (mnt_stat->f_bfree < temp) {
   if (ppsratecheck(&last_lowspace_trigger,
       &cur_lowspace_trigger, 1)) {
    (void)audit_send_trigger(
        AUDIT_TRIGGER_LOW_SPACE);
    printf("Warning: disk space low (< %d%% free) "
        "on audit log file-system\n",
        audit_qctrl.aq_minfree);
   }
  }
 }






 if (audit_fstat.af_filesz != 0 &&
     audit_size >= audit_fstat.af_filesz * (audit_file_rotate_wait + 1)) {
  AUDIT_WORKER_LOCK_ASSERT();

  audit_file_rotate_wait++;
  (void)audit_send_trigger(AUDIT_TRIGGER_ROTATE_KERNEL);
 }
 if (audit_fail_stop) {
  if ((unsigned long)((audit_q_len + audit_pre_q_len + 1) *
      MAX_AUDIT_RECORD_SIZE) / mnt_stat->f_bsize >=
      (unsigned long)(mnt_stat->f_bfree)) {
   if (ppsratecheck(&last_fail, &cur_fail, 1))
    printf("audit_record_write: free space "
        "below size of audit queue, failing "
        "stop\n");
   audit_in_failure = 1;
  } else if (audit_in_failure) {





  }
 }

 error = vn_rdwr(UIO_WRITE, vp, data, len, (off_t)0, UIO_SYSSPACE,
     IO_APPEND|IO_UNIT, cred, ((void*)0), ((void*)0), curthread);
 if (error == ENOSPC)
  goto fail_enospc;
 else if (error)
  goto fail;
 AUDIT_WORKER_LOCK_ASSERT();
 audit_size += len;
 if (audit_in_failure) {
  if (audit_q_len == 0 && audit_pre_q_len == 0) {
   audit_worker_sync_vp(vp, mp,
       "Audit store overflow; record queue drained.");
  }
 }

 vfs_unbusy(mp);
 return;

fail_enospc:





 if (audit_fail_stop) {
  audit_worker_sync_vp(vp, mp,
      "Audit log space exhausted and fail-stop set.");
 }
 (void)audit_send_trigger(AUDIT_TRIGGER_NO_SPACE);
 audit_trail_suspended = 1;
 audit_syscalls_enabled_update();


fail:




 if (audit_panic_on_write_fail) {
  audit_worker_sync_vp(vp, mp,
      "audit_worker: write error %d\n", error);
 } else if (ppsratecheck(&last_fail, &cur_fail, 1))
  printf("audit_worker: write error %d\n", error);
 if (mp != ((void*)0))
  vfs_unbusy(mp);
}
