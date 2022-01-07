
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_create_args {TYPE_2__* a_cnp; int * a_vpp; int a_dvp; TYPE_1__* a_vap; } ;
struct TYPE_5__ {int cn_flags; } ;
struct TYPE_4__ {int va_mode; int va_type; } ;


 int MAKEENTRY ;
 int MAKEIMODE (int ,int ) ;
 int cache_enter (int ,int ,TYPE_2__*) ;
 int ext2_makeinode (int ,int ,int *,TYPE_2__*) ;

__attribute__((used)) static int
ext2_create(struct vop_create_args *ap)
{
 int error;

 error =
     ext2_makeinode(MAKEIMODE(ap->a_vap->va_type, ap->a_vap->va_mode),
     ap->a_dvp, ap->a_vpp, ap->a_cnp);
 if (error != 0)
  return (error);
 if ((ap->a_cnp->cn_flags & MAKEENTRY) != 0)
  cache_enter(ap->a_dvp, *ap->a_vpp, ap->a_cnp);
 return (0);
}
