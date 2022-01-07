
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_cachedlookup_args {int a_cnp; int a_vpp; int a_dvp; } ;


 int ext2_lookup_ino (int ,int ,int ,int *) ;

int
ext2_lookup(struct vop_cachedlookup_args *ap)
{

 return (ext2_lookup_ino(ap->a_dvp, ap->a_vpp, ap->a_cnp, ((void*)0)));
}
