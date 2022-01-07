
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getpages_args {int a_rahead; int a_rbehind; int a_count; int a_m; int a_vp; } ;


 int msdosfs_gbp_getblkno ;
 int msdosfs_gbp_getblksz ;
 scalar_t__ use_buf_pager ;
 int vfs_bio_getpages (int ,int ,int ,int ,int ,int ,int ) ;
 int vnode_pager_generic_getpages (int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int
msdosfs_getpages(struct vop_getpages_args *ap)
{

 if (use_buf_pager)
  return (vfs_bio_getpages(ap->a_vp, ap->a_m, ap->a_count,
      ap->a_rbehind, ap->a_rahead, msdosfs_gbp_getblkno,
      msdosfs_gbp_getblksz));
 return (vnode_pager_generic_getpages(ap->a_vp, ap->a_m, ap->a_count,
     ap->a_rbehind, ap->a_rahead, ((void*)0), ((void*)0)));
}
