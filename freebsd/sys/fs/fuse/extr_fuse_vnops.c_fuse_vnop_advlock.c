
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vop_advlock_args {int a_flags; int a_op; struct flock* a_fl; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; struct ucred* td_ucred; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ start; scalar_t__ end; int pid; } ;
struct fuse_lk_out {TYPE_3__ lk; } ;
struct TYPE_6__ {scalar_t__ start; scalar_t__ end; scalar_t__ type; int pid; } ;
struct fuse_lk_in {TYPE_2__ lk; int owner; int fh; } ;
struct fuse_filehandle {int fh_id; } ;
struct fuse_dispatcher {struct fuse_lk_out* answ; struct fuse_lk_in* indata; } ;
struct flock {scalar_t__ l_start; scalar_t__ l_len; scalar_t__ l_type; int l_pid; } ;
typedef int pid_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_8__ {int dataflags; } ;
struct TYPE_5__ {int p_pid; } ;


 int EINVAL ;
 int ENXIO ;
 int FSESS_POSIX_LOCKS ;
 int FUSE_GETLK ;
 int FUSE_SETLK ;
 int FUSE_SETLKW ;
 int F_FLOCK ;



 scalar_t__ F_UNLCK ;
 scalar_t__ INT64_MAX ;
 struct thread* curthread ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_filehandle_get_anyflags (struct vnode*,struct fuse_filehandle**,struct ucred*,int ) ;
 TYPE_4__* fuse_get_mpdata (int ) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int vnode_mount (struct vnode*) ;
 int vop_stdadvlock (struct vop_advlock_args*) ;

__attribute__((used)) static int
fuse_vnop_advlock(struct vop_advlock_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct flock *fl = ap->a_fl;
 struct thread *td = curthread;
 struct ucred *cred = td->td_ucred;
 pid_t pid = td->td_proc->p_pid;
 struct fuse_filehandle *fufh;
 struct fuse_dispatcher fdi;
 struct fuse_lk_in *fli;
 struct fuse_lk_out *flo;
 enum fuse_opcode op;
 int dataflags, err;
 int flags = ap->a_flags;

 dataflags = fuse_get_mpdata(vnode_mount(vp))->dataflags;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }

 if (!(dataflags & FSESS_POSIX_LOCKS))
  return vop_stdadvlock(ap);

 if (flags & F_FLOCK)
  return vop_stdadvlock(ap);

 err = fuse_filehandle_get_anyflags(vp, &fufh, cred, pid);
 if (err)
  return err;

 fdisp_init(&fdi, sizeof(*fli));

 switch(ap->a_op) {
 case 130:
  op = FUSE_GETLK;
  break;
 case 129:
  op = FUSE_SETLK;
  break;
 case 128:
  op = FUSE_SETLKW;
  break;
 default:
  return EINVAL;
 }

 fdisp_make_vp(&fdi, op, vp, td, cred);
 fli = fdi.indata;
 fli->fh = fufh->fh_id;
 fli->owner = fl->l_pid;
 fli->lk.start = fl->l_start;
 if (fl->l_len != 0)
  fli->lk.end = fl->l_start + fl->l_len - 1;
 else
  fli->lk.end = INT64_MAX;
 fli->lk.type = fl->l_type;
 fli->lk.pid = fl->l_pid;

 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);

 if (err == 0 && op == FUSE_GETLK) {
  flo = fdi.answ;
  fl->l_type = flo->lk.type;
  fl->l_pid = flo->lk.pid;
  if (flo->lk.type != F_UNLCK) {
   fl->l_start = flo->lk.start;
   if (flo->lk.end == INT64_MAX)
    fl->l_len = 0;
   else
    fl->l_len = flo->lk.end - flo->lk.start + 1;
   fl->l_start = flo->lk.start;
  }
 }

 return err;
}
