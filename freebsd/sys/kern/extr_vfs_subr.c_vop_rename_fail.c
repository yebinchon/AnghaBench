
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rename_args {int * a_fvp; int * a_fdvp; int * a_tdvp; int * a_tvp; } ;


 int vput (int *) ;
 int vrele (int *) ;

void
vop_rename_fail(struct vop_rename_args *ap)
{

 if (ap->a_tvp != ((void*)0))
  vput(ap->a_tvp);
 if (ap->a_tdvp == ap->a_tvp)
  vrele(ap->a_tdvp);
 else
  vput(ap->a_tdvp);
 vrele(ap->a_fdvp);
 vrele(ap->a_fvp);
}
