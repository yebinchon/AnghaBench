
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {struct mqfs_vdata* v_data; int v_mount; } ;
struct mqfs_vdata {struct mqfs_node* mv_node; } ;
struct mqfs_node {int dummy; } ;
struct mqfs_info {int mi_lock; } ;


 int LIST_REMOVE (struct mqfs_vdata*,int ) ;
 struct mqfs_info* VFSTOMQFS (int ) ;
 int mqnode_release (struct mqfs_node*) ;
 int mv_link ;
 int mvdata_zone ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uma_zfree (int ,struct mqfs_vdata*) ;

__attribute__((used)) static int
mqfs_reclaim(struct vop_reclaim_args *ap)
{
 struct mqfs_info *mqfs = VFSTOMQFS(ap->a_vp->v_mount);
 struct vnode *vp = ap->a_vp;
 struct mqfs_node *pn;
 struct mqfs_vdata *vd;

 vd = vp->v_data;
 pn = vd->mv_node;
 sx_xlock(&mqfs->mi_lock);
 vp->v_data = ((void*)0);
 LIST_REMOVE(vd, mv_link);
 uma_zfree(mvdata_zone, vd);
 mqnode_release(pn);
 sx_xunlock(&mqfs->mi_lock);
 return (0);
}
