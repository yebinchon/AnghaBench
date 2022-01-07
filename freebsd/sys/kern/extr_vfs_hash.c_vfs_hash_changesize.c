
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct vnode {int v_hash; int v_mount; } ;
struct vfs_hash_head {int dummy; } ;


 struct vnode* LIST_FIRST (struct vfs_hash_head*) ;
 int LIST_INSERT_HEAD (int ,struct vnode*,int ) ;
 int LIST_REMOVE (struct vnode*,int ) ;
 int M_VFS_HASH ;
 int free (struct vfs_hash_head*,int ) ;
 struct vfs_hash_head* hashinit (int,int ,scalar_t__*) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int v_hashlist ;
 int vfs_hash_bucket (int ,int ) ;
 int vfs_hash_lock ;
 scalar_t__ vfs_hash_mask ;
 struct vfs_hash_head* vfs_hash_tbl ;

void
vfs_hash_changesize(int newmaxvnodes)
{
 struct vfs_hash_head *vfs_hash_newtbl, *vfs_hash_oldtbl;
 u_long vfs_hash_newmask, vfs_hash_oldmask;
 struct vnode *vp;
 int i;

 vfs_hash_newtbl = hashinit(newmaxvnodes, M_VFS_HASH,
  &vfs_hash_newmask);

 if (vfs_hash_mask == vfs_hash_newmask) {
  free(vfs_hash_newtbl, M_VFS_HASH);
  return;
 }





 rw_wlock(&vfs_hash_lock);
 vfs_hash_oldtbl = vfs_hash_tbl;
 vfs_hash_oldmask = vfs_hash_mask;
 vfs_hash_tbl = vfs_hash_newtbl;
 vfs_hash_mask = vfs_hash_newmask;
 for (i = 0; i <= vfs_hash_oldmask; i++) {
  while ((vp = LIST_FIRST(&vfs_hash_oldtbl[i])) != ((void*)0)) {
   LIST_REMOVE(vp, v_hashlist);
   LIST_INSERT_HEAD(
       vfs_hash_bucket(vp->v_mount, vp->v_hash),
       vp, v_hashlist);
  }
 }
 rw_wunlock(&vfs_hash_lock);
 free(vfs_hash_oldtbl, M_VFS_HASH);
}
