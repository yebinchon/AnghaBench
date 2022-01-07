
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;


 int EPERM ;
 int ISVTX ;
 int VADMIN ;
 int VDELETE ;
 int VDELETE_CHILD ;
 int VEXEC ;
 int VEXPLICIT_DENY ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 int VOP_ACCESSX (struct vnode*,int,struct ucred*,struct thread*) ;
 TYPE_1__* VTOI (struct vnode*) ;
 int VWRITE ;

__attribute__((used)) static int
ufs_delete_denied(struct vnode *vdp, struct vnode *tdp, struct ucred *cred,
    struct thread *td)
{
 int error;
 error = VOP_ACCESS(vdp, VWRITE, cred, td);
 if (error)
  return (error);







 if ((VTOI(vdp)->i_mode & ISVTX) &&
     VOP_ACCESS(vdp, VADMIN, cred, td) &&
     VOP_ACCESS(tdp, VADMIN, cred, td))
  return (EPERM);

 return (0);
}
