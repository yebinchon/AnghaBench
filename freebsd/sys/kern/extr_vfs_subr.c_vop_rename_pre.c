
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vop_rename_args {TYPE_1__* a_tvp; TYPE_1__* a_tdvp; TYPE_1__* a_fvp; TYPE_1__* a_fdvp; } ;
struct TYPE_5__ {scalar_t__ v_vnlock; } ;


 int ASSERT_VI_UNLOCKED (TYPE_1__*,char*) ;
 int ASSERT_VOP_LOCKED (TYPE_1__*,char*) ;
 int ASSERT_VOP_UNLOCKED (TYPE_1__*,char*) ;
 int vhold (TYPE_1__*) ;

void
vop_rename_pre(void *ap)
{
 struct vop_rename_args *a = ap;
 if (a->a_tdvp != a->a_fdvp)
  vhold(a->a_fdvp);
 if (a->a_tvp != a->a_fvp)
  vhold(a->a_fvp);
 vhold(a->a_tdvp);
 if (a->a_tvp)
  vhold(a->a_tvp);
}
