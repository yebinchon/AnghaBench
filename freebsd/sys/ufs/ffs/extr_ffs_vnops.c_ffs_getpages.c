
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_getpages_args {int a_rahead; int a_rbehind; int a_count; int a_m; struct vnode* a_vp; } ;
struct vnode {int v_mount; } ;
struct ufsmount {TYPE_2__* um_devvp; } ;
struct TYPE_3__ {scalar_t__ bo_bsize; } ;
struct TYPE_4__ {TYPE_1__ v_bufobj; } ;


 scalar_t__ PAGE_SIZE ;
 struct ufsmount* VFSTOUFS (int ) ;
 int ffs_gbp_getblkno ;
 int ffs_gbp_getblksz ;
 int use_buf_pager ;
 int vfs_bio_getpages (struct vnode*,int ,int ,int ,int ,int ,int ) ;
 int vnode_pager_generic_getpages (struct vnode*,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int
ffs_getpages(struct vop_getpages_args *ap)
{
 struct vnode *vp;
 struct ufsmount *um;

 vp = ap->a_vp;
 um = VFSTOUFS(vp->v_mount);

 if (!use_buf_pager && um->um_devvp->v_bufobj.bo_bsize <= PAGE_SIZE)
  return (vnode_pager_generic_getpages(vp, ap->a_m, ap->a_count,
      ap->a_rbehind, ap->a_rahead, ((void*)0), ((void*)0)));
 return (vfs_bio_getpages(vp, ap->a_m, ap->a_count, ap->a_rbehind,
     ap->a_rahead, ffs_gbp_getblkno, ffs_gbp_getblksz));
}
