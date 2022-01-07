
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_read_args {int a_cred; int a_uio; TYPE_1__* a_vp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;


 int EINVAL ;
 scalar_t__ VDIR ;
 int VOP_READDIR (TYPE_1__*,int ,int ,int *,int *,int *) ;

__attribute__((used)) static int
devfs_rread(struct vop_read_args *ap)
{

 if (ap->a_vp->v_type != VDIR)
  return (EINVAL);
 return (VOP_READDIR(ap->a_vp, ap->a_uio, ap->a_cred, ((void*)0), ((void*)0), ((void*)0)));
}
