
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getpages_args {int a_rahead; int a_rbehind; int a_count; int a_m; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;


 int EOPNOTSUPP ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int cd9660_gbp_getblkno ;
 int cd9660_gbp_getblksz ;
 scalar_t__ use_buf_pager ;
 int vfs_bio_getpages (struct vnode*,int ,int ,int ,int ,int ,int ) ;
 int vnode_pager_generic_getpages (struct vnode*,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int
cd9660_getpages(struct vop_getpages_args *ap)
{
 struct vnode *vp;

 vp = ap->a_vp;
 if (vp->v_type == VCHR || vp->v_type == VBLK)
  return (EOPNOTSUPP);

 if (use_buf_pager)
  return (vfs_bio_getpages(vp, ap->a_m, ap->a_count,
      ap->a_rbehind, ap->a_rahead, cd9660_gbp_getblkno,
      cd9660_gbp_getblksz));
 return (vnode_pager_generic_getpages(vp, ap->a_m, ap->a_count,
     ap->a_rbehind, ap->a_rahead, ((void*)0), ((void*)0)));
}
