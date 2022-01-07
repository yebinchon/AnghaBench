
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_write_args {int a_ioflag; struct ucred* a_cred; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct ucred {int dummy; } ;
typedef int pid_t ;
struct TYPE_6__ {int flag; } ;
struct TYPE_5__ {TYPE_1__* td_proc; } ;
struct TYPE_4__ {int p_pid; } ;


 int ENXIO ;
 int FN_DIRECTIO ;
 int IO_DIRECT ;
 TYPE_3__* VTOFUD (struct vnode*) ;
 TYPE_2__* curthread ;
 int fuse_io_dispatch (struct vnode*,struct uio*,int,struct ucred*,int ) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_write(struct vop_write_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 int ioflag = ap->a_ioflag;
 struct ucred *cred = ap->a_cred;
 pid_t pid = curthread->td_proc->p_pid;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }

 if (VTOFUD(vp)->flag & FN_DIRECTIO) {
  ioflag |= IO_DIRECT;
 }

 return fuse_io_dispatch(vp, uio, ioflag, cred, pid);
}
