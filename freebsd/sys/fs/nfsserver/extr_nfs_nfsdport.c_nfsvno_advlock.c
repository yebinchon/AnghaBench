
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct vnode {int dummy; } ;
struct thread {scalar_t__ td_proc; } ;
struct flock {int l_type; int l_sysid; scalar_t__ l_pid; void* l_len; void* l_start; int l_whence; } ;
typedef scalar_t__ pid_t ;
typedef void* off_t ;
typedef int caddr_t ;


 int ASSERT_VOP_UNLOCKED (struct vnode*,char*) ;
 int F_POSIX ;
 int F_REMOTE ;
 int F_SETLK ;
 int F_UNLCK ;
 scalar_t__ NFS64BITSSET ;
 int NFSEXITCODE (int) ;
 int SEEK_SET ;
 int VOP_ADVLOCK (struct vnode*,int ,int,struct flock*,int) ;
 scalar_t__ nfsrv_dolocallocks ;
 scalar_t__ nfsv4_sysid ;
 scalar_t__ nlm_acquire_next_sysid () ;

int
nfsvno_advlock(struct vnode *vp, int ftype, u_int64_t first,
    u_int64_t end, struct thread *td)
{
 int error = 0;
 struct flock fl;
 u_int64_t tlen;

 if (nfsrv_dolocallocks == 0)
  goto out;
 ASSERT_VOP_UNLOCKED(vp, "nfsvno_advlock: vp locked");

 fl.l_whence = SEEK_SET;
 fl.l_type = ftype;
 fl.l_start = (off_t)first;
 if (end == NFS64BITSSET) {
  fl.l_len = 0;
 } else {
  tlen = end - first;
  fl.l_len = (off_t)tlen;
 }
 if (nfsv4_sysid == 0)
  nfsv4_sysid = nlm_acquire_next_sysid();
 fl.l_pid = (pid_t)0;
 fl.l_sysid = (int)nfsv4_sysid;

 if (ftype == F_UNLCK)
  error = VOP_ADVLOCK(vp, (caddr_t)td->td_proc, F_UNLCK, &fl,
      (F_POSIX | F_REMOTE));
 else
  error = VOP_ADVLOCK(vp, (caddr_t)td->td_proc, F_SETLK, &fl,
      (F_POSIX | F_REMOTE));

out:
 NFSEXITCODE(error);
 return (error);
}
