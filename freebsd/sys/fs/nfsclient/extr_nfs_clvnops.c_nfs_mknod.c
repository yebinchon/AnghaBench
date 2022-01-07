
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_mknod_args {int a_vap; int a_cnp; int a_vpp; int a_dvp; } ;


 int nfs_mknodrpc (int ,int ,int ,int ) ;

__attribute__((used)) static int
nfs_mknod(struct vop_mknod_args *ap)
{
 return (nfs_mknodrpc(ap->a_dvp, ap->a_vpp, ap->a_cnp, ap->a_vap));
}
