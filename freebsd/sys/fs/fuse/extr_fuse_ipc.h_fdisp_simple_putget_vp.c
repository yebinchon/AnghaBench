
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;


 int fdisp_make_vp (struct fuse_dispatcher*,int,struct vnode*,struct thread*,struct ucred*) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;

__attribute__((used)) static inline int
fdisp_simple_putget_vp(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct vnode *vp, struct thread *td, struct ucred *cred)
{
 fdisp_make_vp(fdip, op, vp, td, cred);
 return (fdisp_wait_answ(fdip));
}
