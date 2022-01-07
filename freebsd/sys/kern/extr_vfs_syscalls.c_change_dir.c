
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int td_ucred; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int ENOTDIR ;
 scalar_t__ VDIR ;
 int VEXEC ;
 int VOP_ACCESS (struct vnode*,int ,int ,struct thread*) ;
 int mac_vnode_check_chdir (int ,struct vnode*) ;

int
change_dir(struct vnode *vp, struct thread *td)
{




 ASSERT_VOP_LOCKED(vp, "change_dir(): vp not locked");
 if (vp->v_type != VDIR)
  return (ENOTDIR);





 return (VOP_ACCESS(vp, VEXEC, td->td_ucred, td));
}
