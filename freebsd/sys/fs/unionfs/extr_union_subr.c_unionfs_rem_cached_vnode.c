
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct TYPE_2__ {int * le_prev; int * le_next; } ;
struct unionfs_node {TYPE_1__ un_hash; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct unionfs_node*,int ) ;
 struct vnode* NULLVP ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int un_hash ;

__attribute__((used)) static void
unionfs_rem_cached_vnode(struct unionfs_node *unp, struct vnode *dvp)
{
 KASSERT((unp != ((void*)0)), ("unionfs_rem_cached_vnode: null node"));
 KASSERT((dvp != NULLVP),
     ("unionfs_rem_cached_vnode: null parent vnode"));
 KASSERT((unp->un_hash.le_prev != ((void*)0)),
     ("unionfs_rem_cached_vnode: null hash"));

 VI_LOCK(dvp);
 LIST_REMOVE(unp, un_hash);
 unp->un_hash.le_next = ((void*)0);
 unp->un_hash.le_prev = ((void*)0);
 VI_UNLOCK(dvp);
}
