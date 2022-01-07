
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode_au_info {int vn_gen; int vn_fileid; int vn_fsid; int vn_dev; int vn_gid; int vn_uid; int vn_mode; } ;
struct vnode {int dummy; } ;
struct vattr {int va_gen; int va_fileid; int va_fsid; int va_rdev; int va_gid; int va_uid; int va_mode; } ;
struct TYPE_2__ {int td_ucred; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 TYPE_1__* curthread ;

__attribute__((used)) static int
audit_arg_vnode(struct vnode *vp, struct vnode_au_info *vnp)
{
 struct vattr vattr;
 int error;

 ASSERT_VOP_LOCKED(vp, "audit_arg_vnode");

 error = VOP_GETATTR(vp, &vattr, curthread->td_ucred);
 if (error) {

  return (error);
 }

 vnp->vn_mode = vattr.va_mode;
 vnp->vn_uid = vattr.va_uid;
 vnp->vn_gid = vattr.va_gid;
 vnp->vn_dev = vattr.va_rdev;
 vnp->vn_fsid = vattr.va_fsid;
 vnp->vn_fileid = vattr.va_fileid;
 vnp->vn_gen = vattr.va_gen;
 return (0);
}
