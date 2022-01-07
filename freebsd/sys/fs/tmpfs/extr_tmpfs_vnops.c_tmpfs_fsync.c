
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fsync_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;


 int MPASS (int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int tmpfs_check_mtime (struct vnode*) ;
 int tmpfs_update (struct vnode*) ;

__attribute__((used)) static int
tmpfs_fsync(struct vop_fsync_args *v)
{
 struct vnode *vp = v->a_vp;

 MPASS(VOP_ISLOCKED(vp));

 tmpfs_check_mtime(vp);
 tmpfs_update(vp);

 return 0;
}
