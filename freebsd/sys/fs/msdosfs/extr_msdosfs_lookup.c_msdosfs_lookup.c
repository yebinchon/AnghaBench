
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_cachedlookup_args {int a_cnp; int a_vpp; int a_dvp; } ;


 int msdosfs_lookup_ (int ,int ,int ,int *) ;

int
msdosfs_lookup(struct vop_cachedlookup_args *ap)
{

 return (msdosfs_lookup_(ap->a_dvp, ap->a_vpp, ap->a_cnp, ((void*)0)));
}
