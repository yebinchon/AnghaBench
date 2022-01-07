
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oexport_args {int dummy; } ;
struct export_args {scalar_t__ ex_numsecflavors; } ;


 int bcopy (struct oexport_args const*,struct export_args*,int) ;

void
vfs_oexport_conv(const struct oexport_args *oexp, struct export_args *exp)
{

 bcopy(oexp, exp, sizeof(*oexp));
 exp->ex_numsecflavors = 0;
}
