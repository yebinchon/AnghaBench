
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_copy_file_range_args {int a_fsizetd; int a_outcred; int a_incred; int a_flags; int a_lenp; int a_outoffp; int a_outvp; int a_inoffp; int a_invp; } ;


 int vn_generic_copy_file_range (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
vop_stdcopy_file_range(struct vop_copy_file_range_args *ap)
{
 int error;

 error = vn_generic_copy_file_range(ap->a_invp, ap->a_inoffp,
     ap->a_outvp, ap->a_outoffp, ap->a_lenp, ap->a_flags, ap->a_incred,
     ap->a_outcred, ap->a_fsizetd);
 return (error);
}
