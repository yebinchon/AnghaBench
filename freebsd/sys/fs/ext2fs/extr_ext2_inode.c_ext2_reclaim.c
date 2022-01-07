
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_data; } ;
struct inode {int i_flag; } ;


 int IN_LAZYMOD ;
 int IN_MODIFIED ;
 int M_EXT2NODE ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_update (struct vnode*,int ) ;
 int free (scalar_t__,int ) ;
 int vfs_hash_remove (struct vnode*) ;

int
ext2_reclaim(struct vop_reclaim_args *ap)
{
 struct inode *ip;
 struct vnode *vp = ap->a_vp;

 ip = VTOI(vp);
 if (ip->i_flag & IN_LAZYMOD) {
  ip->i_flag |= IN_MODIFIED;
  ext2_update(vp, 0);
 }
 vfs_hash_remove(vp);
 free(vp->v_data, M_EXT2NODE);
 vp->v_data = 0;
 return (0);
}
