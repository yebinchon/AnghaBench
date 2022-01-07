
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_remove_args {TYPE_1__* a_vp; TYPE_1__* a_dvp; } ;
struct denode {int dummy; } ;
struct TYPE_2__ {scalar_t__ v_type; int v_usecount; } ;


 int EPERM ;
 scalar_t__ VDIR ;
 struct denode* VTODE (TYPE_1__*) ;
 int printf (char*,struct denode*,int) ;
 int removede (struct denode*,struct denode*) ;

__attribute__((used)) static int
msdosfs_remove(struct vop_remove_args *ap)
{
 struct denode *dep = VTODE(ap->a_vp);
 struct denode *ddep = VTODE(ap->a_dvp);
 int error;

 if (ap->a_vp->v_type == VDIR)
  error = EPERM;
 else
  error = removede(ddep, dep);



 return (error);
}
