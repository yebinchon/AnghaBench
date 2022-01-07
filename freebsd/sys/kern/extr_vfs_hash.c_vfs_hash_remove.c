
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int LIST_REMOVE (struct vnode*,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int v_hashlist ;
 int vfs_hash_lock ;

void
vfs_hash_remove(struct vnode *vp)
{

 rw_wlock(&vfs_hash_lock);
 LIST_REMOVE(vp, v_hashlist);
 rw_wunlock(&vfs_hash_lock);
}
