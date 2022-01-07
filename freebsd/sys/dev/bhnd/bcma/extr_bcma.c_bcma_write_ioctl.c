
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bhnd_resource {int dummy; } ;
struct bcma_devinfo {struct bhnd_resource* res_agent; } ;
typedef scalar_t__ device_t ;


 int BCMA_DMP_IOCTRL ;
 int BCMA_DMP_IOCTRL_MASK ;
 int DELAY (int) ;
 int EINVAL ;
 int ENODEV ;
 int bhnd_bus_read_4 (struct bhnd_resource*,int ) ;
 int bhnd_bus_write_4 (struct bhnd_resource*,int ,int) ;
 struct bcma_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

__attribute__((used)) static int
bcma_write_ioctl(device_t dev, device_t child, uint16_t value, uint16_t mask)
{
 struct bcma_devinfo *dinfo;
 struct bhnd_resource *r;
 uint32_t ioctl;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 dinfo = device_get_ivars(child);
 if ((r = dinfo->res_agent) == ((void*)0))
  return (ENODEV);


 ioctl = bhnd_bus_read_4(r, BCMA_DMP_IOCTRL);
 ioctl &= ~(BCMA_DMP_IOCTRL_MASK & mask);
 ioctl |= (value & mask);

 bhnd_bus_write_4(r, BCMA_DMP_IOCTRL, ioctl);


 bhnd_bus_read_4(r, BCMA_DMP_IOCTRL);
 DELAY(10);

 return (0);
}
