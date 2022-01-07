
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getpages_async_args {int a_count; int a_m; int a_arg; int (* a_iodone ) (int ,int ,int ,int) ;int a_rahead; int a_rbehind; int a_vp; } ;


 int VOP_GETPAGES (int ,int ,int ,int ,int ) ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static int
vop_stdgetpages_async(struct vop_getpages_async_args *ap)
{
 int error;

 error = VOP_GETPAGES(ap->a_vp, ap->a_m, ap->a_count, ap->a_rbehind,
     ap->a_rahead);
 ap->a_iodone(ap->a_arg, ap->a_m, ap->a_count, error);
 return (error);
}
