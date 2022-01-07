
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fdatasync_args {int a_td; int a_vp; } ;


 int MNT_WAIT ;
 int VOP_FSYNC (int ,int ,int ) ;

__attribute__((used)) static int
vop_stdfdatasync(struct vop_fdatasync_args *ap)
{

 return (VOP_FSYNC(ap->a_vp, MNT_WAIT, ap->a_td));
}
