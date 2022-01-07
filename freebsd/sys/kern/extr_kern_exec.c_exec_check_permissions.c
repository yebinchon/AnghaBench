
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_mount; } ;
struct vattr {int va_mode; scalar_t__ va_type; scalar_t__ va_size; } ;
struct thread {int td_ucred; } ;
struct image_params {int textset; int opened; struct vnode* vp; struct vattr* attr; } ;
struct TYPE_2__ {int mnt_flag; } ;


 int EACCES ;
 int ENOEXEC ;
 int FREAD ;
 int MNT_NOEXEC ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int VEXEC ;
 int VOP_ACCESS (struct vnode*,int ,int ,struct thread*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_OPEN (struct vnode*,int ,int ,struct thread*,int *) ;
 int VOP_SET_TEXT (struct vnode*) ;
 scalar_t__ VREG ;
 struct thread* curthread ;
 int mac_vnode_check_exec (int ,struct vnode*,struct image_params*) ;

int
exec_check_permissions(struct image_params *imgp)
{
 struct vnode *vp = imgp->vp;
 struct vattr *attr = imgp->attr;
 struct thread *td;
 int error;

 td = curthread;


 error = VOP_GETATTR(vp, attr, td->td_ucred);
 if (error)
  return (error);
 if ((vp->v_mount->mnt_flag & MNT_NOEXEC) ||
     (attr->va_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) == 0 ||
     (attr->va_type != VREG))
  return (EACCES);




 if (attr->va_size == 0)
  return (ENOEXEC);




 error = VOP_ACCESS(vp, VEXEC, td->td_ucred, td);
 if (error)
  return (error);
 error = VOP_SET_TEXT(vp);
 if (error != 0)
  return (error);
 imgp->textset = 1;





 error = VOP_OPEN(vp, FREAD, td->td_ucred, td, ((void*)0));
 if (error == 0)
  imgp->opened = 1;
 return (error);
}
