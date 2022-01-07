
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bhnd_resource {int dummy; } ;
struct bcma_devinfo {struct bhnd_resource* res_agent; } ;
typedef scalar_t__ device_t ;


 int BCMA_DMP_RC_RESET ;
 int BHND_IOCTL_CLK_EN ;
 int BHND_IOCTL_CLK_FORCE ;
 int EINVAL ;
 int ENODEV ;
 int bcma_dmp_wait_reset (scalar_t__,struct bcma_devinfo*) ;
 int bcma_dmp_write_reset (scalar_t__,struct bcma_devinfo*,int ) ;
 int bhnd_write_ioctl (scalar_t__,int,int) ;
 struct bcma_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

__attribute__((used)) static int
bcma_suspend_hw(device_t dev, device_t child, uint16_t ioctl)
{
 struct bcma_devinfo *dinfo;
 struct bhnd_resource *r;
 uint16_t clkflags;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 dinfo = device_get_ivars(child);


 clkflags = BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE;
 if (ioctl & clkflags)
  return (EINVAL);


 if ((r = dinfo->res_agent) == ((void*)0))
  return (ENODEV);


 if ((error = bcma_dmp_wait_reset(child, dinfo)))
  return (error);


 if ((error = bcma_dmp_write_reset(child, dinfo, BCMA_DMP_RC_RESET)))
  return (error);


 if ((error = bhnd_write_ioctl(child, ioctl, ~clkflags)))
  return (error);

 return (0);
}
