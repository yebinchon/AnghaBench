
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_vflag; TYPE_1__* v_mount; } ;
struct inode {scalar_t__ i_nlink; } ;
struct TYPE_2__ {int * mnt_gjprovider; } ;


 struct inode* VTOI (struct vnode*) ;
 int VV_DELETED ;
 int ufs_gjournal_modref (struct vnode*,int) ;

void
ufs_gjournal_close(struct vnode *vp)
{
 struct inode *ip;

 if (vp->v_mount->mnt_gjprovider == ((void*)0))
  return;
 if (!(vp->v_vflag & VV_DELETED))
  return;
 ip = VTOI(vp);
 if (ip->i_nlink > 0)
  return;
 ufs_gjournal_modref(vp, -1);
}
