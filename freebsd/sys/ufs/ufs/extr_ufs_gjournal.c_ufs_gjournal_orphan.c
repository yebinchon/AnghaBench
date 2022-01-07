
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_usecount; int v_vflag; scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct inode {int i_nlink; } ;
struct TYPE_2__ {int * mnt_gjprovider; } ;


 scalar_t__ VDIR ;
 struct inode* VTOI (struct vnode*) ;
 int VV_DELETED ;
 int ufs_gjournal_modref (struct vnode*,int) ;

void
ufs_gjournal_orphan(struct vnode *vp)
{
 struct inode *ip;

 if (vp->v_mount->mnt_gjprovider == ((void*)0))
  return;
 if (vp->v_usecount < 2 || (vp->v_vflag & VV_DELETED))
  return;
 ip = VTOI(vp);
 if ((vp->v_type == VDIR && ip->i_nlink > 2) ||
     (vp->v_type != VDIR && ip->i_nlink > 1)) {
  return;
 }
 vp->v_vflag |= VV_DELETED;

 ufs_gjournal_modref(vp, 1);
}
