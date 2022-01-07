
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fdatasync_args {int a_vp; } ;


 int MNT_WAIT ;
 int vn_fsync_buf (int ,int ) ;

int
vop_stdfdatasync_buf(struct vop_fdatasync_args *ap)
{

 return (vn_fsync_buf(ap->a_vp, MNT_WAIT));
}
