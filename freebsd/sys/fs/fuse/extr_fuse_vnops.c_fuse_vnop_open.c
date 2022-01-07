
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_open_args {int a_mode; struct ucred* a_cred; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct fuse_vnode_data {int dummy; } ;
typedef int pid_t ;
struct TYPE_2__ {int p_pid; } ;


 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int FEXEC ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VFIFO ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int fuse_filehandle_open (struct vnode*,int,int *,struct thread*,struct ucred*) ;
 scalar_t__ fuse_filehandle_validrw (struct vnode*,int,struct ucred*,int ) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int fuse_vnode_open (struct vnode*,int ,struct thread*) ;

__attribute__((used)) static int
fuse_vnop_open(struct vop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;
 int a_mode = ap->a_mode;
 struct thread *td = ap->a_td;
 struct ucred *cred = ap->a_cred;
 pid_t pid = td->td_proc->p_pid;
 struct fuse_vnode_data *fvdat;

 if (fuse_isdeadfs(vp))
  return ENXIO;
 if (vp->v_type == VCHR || vp->v_type == VBLK || vp->v_type == VFIFO)
  return (EOPNOTSUPP);
 if ((a_mode & (FREAD | FWRITE | FEXEC)) == 0)
  return EINVAL;

 fvdat = VTOFUD(vp);

 if (fuse_filehandle_validrw(vp, a_mode, cred, pid)) {
  fuse_vnode_open(vp, 0, td);
  return 0;
 }

 return fuse_filehandle_open(vp, a_mode, ((void*)0), td, cred);
}
