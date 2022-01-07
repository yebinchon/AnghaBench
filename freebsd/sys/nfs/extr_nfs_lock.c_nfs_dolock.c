
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vop_advlock_args {int a_flags; scalar_t__ a_op; struct flock* a_fl; struct vnode* a_vp; } ;
struct vnode {int v_mount; } ;
struct timeval {int dummy; } ;
struct thread {int td_ucred; struct proc* td_proc; } ;
struct proc {TYPE_4__* p_nlminfo; TYPE_1__* p_stats; int p_pid; } ;
struct nlminfo {int dummy; } ;
struct nfsmount {int (* nm_getinfo ) (struct vnode*,int ,int *,int *,int *,int *,int *) ;} ;
struct flock {scalar_t__ l_whence; scalar_t__ l_start; int l_len; scalar_t__ l_type; int l_pid; scalar_t__ l_sysid; } ;
struct TYPE_10__ {int retcode; int getlk_pid; scalar_t__ set_getlk_pid; scalar_t__ msg_seq; int pid_start; } ;
struct TYPE_8__ {scalar_t__ msg_seq; int pid_start; int pid; } ;
struct TYPE_9__ {int lm_wait; int lm_getlk; int lm_cred; struct flock lm_fl; TYPE_2__ lm_msg_ident; int lm_version; int lm_nfsv3; int lm_addr; int lm_fh_len; int lm_fh; } ;
struct TYPE_7__ {int p_start; } ;
typedef TYPE_3__ LOCKD_MSG ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EINVAL ;
 int EOVERFLOW ;
 int EWOULDBLOCK ;
 scalar_t__ F_GETLK ;
 scalar_t__ F_UNLCK ;
 int F_WAIT ;
 int Giant ;
 int LOCKD_MSG_VERSION ;
 int M_NLMINFO ;
 int M_WAITOK ;
 int M_ZERO ;
 int OFF_MAX ;
 int PUSER ;
 scalar_t__ SEEK_CUR ;
 scalar_t__ SEEK_END ;
 scalar_t__ SEEK_SET ;
 struct nfsmount* VFSTONFS (int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int cru2x (int ,int *) ;
 struct thread* curthread ;
 int getboottime (struct timeval*) ;
 int hz ;
 TYPE_4__* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfslock_send (TYPE_3__*) ;
 int stub1 (struct vnode*,int ,int *,int *,int *,int *,int *) ;
 int timevaladd (int *,struct timeval*) ;
 int tsleep (TYPE_4__*,int ,char*,int) ;

int
nfs_dolock(struct vop_advlock_args *ap)
{
 LOCKD_MSG msg;
 struct thread *td;
 struct vnode *vp;
 int error;
 struct flock *fl;
 struct proc *p;
 struct nfsmount *nmp;
 struct timeval boottime;

 td = curthread;
 p = td->td_proc;

 vp = ap->a_vp;
 fl = ap->a_fl;
 nmp = VFSTONFS(vp->v_mount);

 ASSERT_VOP_LOCKED(vp, "nfs_dolock");

 nmp->nm_getinfo(vp, msg.lm_fh, &msg.lm_fh_len, &msg.lm_addr,
     &msg.lm_nfsv3, ((void*)0), ((void*)0));
 VOP_UNLOCK(vp, 0);





 if (fl->l_whence != SEEK_END) {
  if ((fl->l_whence != SEEK_CUR && fl->l_whence != SEEK_SET) ||
      fl->l_start < 0 ||
      (fl->l_len < 0 &&
       (fl->l_start == 0 || fl->l_start + fl->l_len < 0)))
   return (EINVAL);
  if (fl->l_len > 0 &&
    (fl->l_len - 1 > OFF_MAX - fl->l_start))
   return (EOVERFLOW);
 }




 msg.lm_version = LOCKD_MSG_VERSION;
 msg.lm_msg_ident.pid = p->p_pid;

 mtx_lock(&Giant);



 if (p->p_nlminfo == ((void*)0)) {
  p->p_nlminfo = malloc(sizeof(struct nlminfo),
      M_NLMINFO, M_WAITOK | M_ZERO);
  p->p_nlminfo->pid_start = p->p_stats->p_start;
  getboottime(&boottime);
  timevaladd(&p->p_nlminfo->pid_start, &boottime);
 }
 msg.lm_msg_ident.pid_start = p->p_nlminfo->pid_start;
 msg.lm_msg_ident.msg_seq = ++(p->p_nlminfo->msg_seq);

 msg.lm_fl = *fl;
 msg.lm_wait = ap->a_flags & F_WAIT;
 msg.lm_getlk = ap->a_op == F_GETLK;
 cru2x(td->td_ucred, &msg.lm_cred);

 for (;;) {
  error = nfslock_send(&msg);
  if (error)
   goto out;


  if (fl->l_type == F_UNLCK)
   goto out;
  error = tsleep(p->p_nlminfo, PUSER, "lockd", 20*hz);
  if (error != 0) {
   if (error == EWOULDBLOCK) {




    continue;
   }

   break;
  }

  if (msg.lm_getlk && p->p_nlminfo->retcode == 0) {
   if (p->p_nlminfo->set_getlk_pid) {
    fl->l_sysid = 0;
    fl->l_pid = p->p_nlminfo->getlk_pid;
   } else {
    fl->l_type = F_UNLCK;
   }
  }
  error = p->p_nlminfo->retcode;
  break;
 }
 out:
 mtx_unlock(&Giant);
 return (error);
}
