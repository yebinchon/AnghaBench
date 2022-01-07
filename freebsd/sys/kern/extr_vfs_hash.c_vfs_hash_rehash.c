
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vnode {int v_hash; int v_mount; } ;


 int LIST_INSERT_HEAD (int ,struct vnode*,int ) ;
 int LIST_REMOVE (struct vnode*,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int v_hashlist ;
 int vfs_hash_bucket (int ,int ) ;
 int vfs_hash_lock ;

void
vfs_hash_rehash(struct vnode *vp, u_int hash)
{

 rw_wlock(&vfs_hash_lock);
 LIST_REMOVE(vp, v_hashlist);
 LIST_INSERT_HEAD(vfs_hash_bucket(vp->v_mount, hash), vp, v_hashlist);
 vp->v_hash = hash;
 rw_wunlock(&vfs_hash_lock);
}
