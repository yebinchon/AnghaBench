
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
typedef int daddr_t ;
struct TYPE_4__ {TYPE_1__* de_pmp; } ;
struct TYPE_3__ {int pm_bpcluster; } ;


 TYPE_2__* VTODE (struct vnode*) ;

__attribute__((used)) static int
msdosfs_gbp_getblksz(struct vnode *vp, daddr_t lbn)
{

 return (VTODE(vp)->de_pmp->pm_bpcluster);
}
