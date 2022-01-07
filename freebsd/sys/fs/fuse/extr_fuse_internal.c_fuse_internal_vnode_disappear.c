
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fuse_vnode_data {int flag; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int FN_REVOKED ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int cache_purge (struct vnode*) ;

void
fuse_internal_vnode_disappear(struct vnode *vp)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);

 ASSERT_VOP_ELOCKED(vp, "fuse_internal_vnode_disappear");
 fvdat->flag |= FN_REVOKED;
 cache_purge(vp);
}
