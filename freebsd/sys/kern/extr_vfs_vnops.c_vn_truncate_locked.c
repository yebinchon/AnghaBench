
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int va_vaflags; int va_size; } ;
struct ucred {int dummy; } ;
typedef int off_t ;


 int VATTR_NULL (struct vattr*) ;
 int VA_SYNC ;
 int VOP_ADD_WRITECOUNT (struct vnode*,int) ;
 int VOP_ADD_WRITECOUNT_CHECKED (struct vnode*,int) ;
 int VOP_SETATTR (struct vnode*,struct vattr*,struct ucred*) ;

int
vn_truncate_locked(struct vnode *vp, off_t length, bool sync,
    struct ucred *cred)
{
 struct vattr vattr;
 int error;

 error = VOP_ADD_WRITECOUNT(vp, 1);
 if (error == 0) {
  VATTR_NULL(&vattr);
  vattr.va_size = length;
  if (sync)
   vattr.va_vaflags |= VA_SYNC;
  error = VOP_SETATTR(vp, &vattr, cred);
  VOP_ADD_WRITECOUNT_CHECKED(vp, -1);
 }
 return (error);
}
