
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_rmdir_args {int a_gen; int a_vp; } ;
struct TYPE_2__ {int null_flags; } ;


 int NULLV_DROP ;
 TYPE_1__* VTONULL (int ) ;
 int null_bypass (int *) ;

__attribute__((used)) static int
null_rmdir(struct vop_rmdir_args *ap)
{

 VTONULL(ap->a_vp)->null_flags |= NULLV_DROP;
 return (null_bypass(&ap->a_gen));
}
