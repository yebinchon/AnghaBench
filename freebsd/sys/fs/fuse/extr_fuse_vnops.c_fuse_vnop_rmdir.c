
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rmdir_args {int a_cnp; struct vnode* a_vp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 int FUSE_RMDIR ;
 scalar_t__ VTOFUD (struct vnode*) ;
 int fuse_internal_remove (struct vnode*,struct vnode*,int ,int ) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_rmdir(struct vop_rmdir_args *ap)
{
 struct vnode *dvp = ap->a_dvp;
 struct vnode *vp = ap->a_vp;

 int err;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }
 if (VTOFUD(vp) == VTOFUD(dvp)) {
  return EINVAL;
 }
 err = fuse_internal_remove(dvp, vp, ap->a_cnp, FUSE_RMDIR);

 return err;
}
