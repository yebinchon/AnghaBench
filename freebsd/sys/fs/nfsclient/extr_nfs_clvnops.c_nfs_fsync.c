
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_fsync_args {int a_td; int a_waitfor; TYPE_1__* a_vp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;


 scalar_t__ VREG ;
 int ncl_flush (TYPE_1__*,int ,int ,int,int ) ;

__attribute__((used)) static int
nfs_fsync(struct vop_fsync_args *ap)
{

 if (ap->a_vp->v_type != VREG) {






  return (0);
 }
 return (ncl_flush(ap->a_vp, ap->a_waitfor, ap->a_td, 1, 0));
}
