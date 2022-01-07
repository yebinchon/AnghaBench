
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct unionfs_mount {struct vnode* um_rootvp; } ;
struct mount {int dummy; } ;


 int LK_TYPE_MASK ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int UNIONFSDEBUG (char*,struct vnode*,int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vref (struct vnode*) ;

__attribute__((used)) static int
unionfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct unionfs_mount *ump;
 struct vnode *vp;

 ump = MOUNTTOUNIONFSMOUNT(mp);
 vp = ump->um_rootvp;

 UNIONFSDEBUG("unionfs_root: rootvp=%p locked=%x\n",
     vp, VOP_ISLOCKED(vp));

 vref(vp);
 if (flags & LK_TYPE_MASK)
  vn_lock(vp, flags);

 *vpp = vp;

 return (0);
}
