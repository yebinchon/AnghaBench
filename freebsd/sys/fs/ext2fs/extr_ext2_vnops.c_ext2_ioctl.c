
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_command; int a_cred; scalar_t__ a_data; int a_vp; } ;
typedef int off_t ;


 int ENOTTY ;


 int vn_bmap_seekhole (int ,int,int *,int ) ;

__attribute__((used)) static int
ext2_ioctl(struct vop_ioctl_args *ap)
{

 switch (ap->a_command) {
 case 129:
 case 128:
  return (vn_bmap_seekhole(ap->a_vp, ap->a_command,
      (off_t *)ap->a_data, ap->a_cred));
 default:
  return (ENOTTY);
 }
}
