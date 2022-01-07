
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_1__* v_vnlock; } ;
struct unionfs_node_hashhead {int dummy; } ;
struct unionfs_node {int * un_path; struct vnode* un_uppervp; struct vnode* un_dvp; struct vnode* un_lowervp; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {unsigned int lk_recurse; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int LIST_INSERT_HEAD (struct unionfs_node_hashhead*,struct unionfs_node*,int ) ;
 int LIST_REMOVE (struct unionfs_node*,int ) ;
 int LK_CANRECURSE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 struct vnode* NULLVP ;
 struct vnode* UNIONFSTOV (struct unionfs_node*) ;
 scalar_t__ VDIR ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int un_hash ;
 struct unionfs_node_hashhead* unionfs_get_hashhead (struct vnode*,int *) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static void
unionfs_node_update(struct unionfs_node *unp, struct vnode *uvp,
      struct thread *td)
{
 unsigned count, lockrec;
 struct vnode *vp;
 struct vnode *lvp;
 struct vnode *dvp;

 vp = UNIONFSTOV(unp);
 lvp = unp->un_lowervp;
 ASSERT_VOP_ELOCKED(lvp, "unionfs_node_update");
 dvp = unp->un_dvp;




 VI_LOCK(vp);
 unp->un_uppervp = uvp;
 vp->v_vnlock = uvp->v_vnlock;
 VI_UNLOCK(vp);
 lockrec = lvp->v_vnlock->lk_recurse;
 for (count = 0; count < lockrec; count++)
  vn_lock(uvp, LK_EXCLUSIVE | LK_CANRECURSE | LK_RETRY);




 if (unp->un_path != ((void*)0) && dvp != NULLVP && vp->v_type == VDIR) {
  static struct unionfs_node_hashhead *hd;

  VI_LOCK(dvp);
  hd = unionfs_get_hashhead(dvp, unp->un_path);
  LIST_REMOVE(unp, un_hash);
  LIST_INSERT_HEAD(hd, unp, un_hash);
  VI_UNLOCK(dvp);
 }
}
