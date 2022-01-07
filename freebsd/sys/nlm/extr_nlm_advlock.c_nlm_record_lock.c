
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_advlockasync_args {int a_op; int a_flags; int * a_cookiep; int * a_task; struct flock* a_fl; int * a_id; struct vnode* a_vp; } ;
struct vnode {int v_lockf; } ;
struct proc {int dummy; } ;
struct flock {int l_pid; int l_sysid; int l_whence; int l_type; int l_len; int l_start; } ;
typedef int off_t ;


 int EDEADLK ;
 int EINTR ;
 int ENOENT ;
 int F_NOINTR ;
 int F_REMOTE ;
 int F_WAIT ;
 int KASSERT (int,char*) ;
 int NLM_SYSID_CLIENT ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGDEFERSTOP_OFF ;
 struct proc* curproc ;
 int lf_advlockasync (struct vop_advlockasync_args*,int *,int ) ;
 int pause (char*,int) ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;
 int thread_suspend_check (int ) ;

__attribute__((used)) static void
nlm_record_lock(struct vnode *vp, int op, struct flock *fl,
    int svid, int sysid, off_t size)
{
 struct vop_advlockasync_args a;
 struct flock newfl;
 struct proc *p;
 int error, stops_deferred;

 a.a_vp = vp;
 a.a_id = ((void*)0);
 a.a_op = op;
 a.a_fl = &newfl;
 a.a_flags = F_REMOTE|F_WAIT|F_NOINTR;
 a.a_task = ((void*)0);
 a.a_cookiep = ((void*)0);
 newfl.l_start = fl->l_start;
 newfl.l_len = fl->l_len;
 newfl.l_type = fl->l_type;
 newfl.l_whence = fl->l_whence;
 newfl.l_pid = svid;
 newfl.l_sysid = NLM_SYSID_CLIENT | sysid;

 for (;;) {
  error = lf_advlockasync(&a, &vp->v_lockf, size);
  if (error == EDEADLK) {
   pause("nlmdlk", 1);
   p = curproc;
   stops_deferred = sigdeferstop(SIGDEFERSTOP_OFF);
   PROC_LOCK(p);
   thread_suspend_check(0);
   PROC_UNLOCK(p);
   sigallowstop(stops_deferred);
  } else if (error == EINTR) {







   error = 0;
   break;
  } else
   break;
 }
 KASSERT(error == 0 || error == ENOENT,
     ("Failed to register NFS lock locally - error=%d", error));
}
