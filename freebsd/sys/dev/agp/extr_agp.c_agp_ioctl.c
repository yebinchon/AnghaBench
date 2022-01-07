
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
typedef int agp_unbind ;
typedef int agp_setup ;
typedef int agp_info ;
typedef int agp_bind ;
typedef int agp_allocate ;
 int AGP_ACQUIRE_USER ;
 int EINVAL ;
 int agp_acquire_helper (int ,int ) ;
 int agp_allocate_user (int ,int *) ;
 int agp_bind_user (int ,int *) ;
 int agp_chipset_flush (int ) ;
 int agp_deallocate_user (int ,int) ;
 int agp_info_user (int ,int *) ;
 int agp_release_helper (int ,int ) ;
 int agp_setup_user (int ,int *) ;
 int agp_unbind_user (int ,int *) ;

__attribute__((used)) static int
agp_ioctl(struct cdev *kdev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 device_t dev = kdev->si_drv1;

 switch (cmd) {
 case 131:
  return agp_info_user(dev, (agp_info *) data);

 case 136:
  return agp_acquire_helper(dev, AGP_ACQUIRE_USER);

 case 130:
  return agp_release_helper(dev, AGP_ACQUIRE_USER);

 case 129:
  return agp_setup_user(dev, (agp_setup *)data);

 case 135:
  return agp_allocate_user(dev, (agp_allocate *)data);

 case 132:
  return agp_deallocate_user(dev, *(int *) data);

 case 134:
  return agp_bind_user(dev, (agp_bind *)data);

 case 128:
  return agp_unbind_user(dev, (agp_unbind *)data);

 case 133:
  return agp_chipset_flush(dev);
 }

 return EINVAL;
}
