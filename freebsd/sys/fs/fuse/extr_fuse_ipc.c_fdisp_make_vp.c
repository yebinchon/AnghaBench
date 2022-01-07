
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {int dummy; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_2__ {int p_pid; } ;


 int RECTIFY_TDCR (struct thread*,struct ucred*) ;
 int VTOI (struct vnode*) ;
 void fdisp_make_pid (struct fuse_dispatcher*,int,struct fuse_data*,int ,int ,struct ucred*) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 struct mount* vnode_mount (struct vnode*) ;

void
fdisp_make_vp(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct vnode *vp, struct thread *td, struct ucred *cred)
{
 struct mount *mp = vnode_mount(vp);
 struct fuse_data *data = fuse_get_mpdata(mp);

 RECTIFY_TDCR(td, cred);
 return fdisp_make_pid(fdip, op, data, VTOI(vp),
     td->td_proc->p_pid, cred);
}
