
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_generic_args {int dummy; } ;


 int newnfs_fifoops_nosig ;
 int vop_sigdefer (int *,struct vop_generic_args*) ;

__attribute__((used)) static int
nfs_fifoops_bypass(struct vop_generic_args *a)
{

 return (vop_sigdefer(&newnfs_fifoops_nosig, a));
}
