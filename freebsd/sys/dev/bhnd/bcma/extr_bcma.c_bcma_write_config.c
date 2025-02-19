
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct bhnd_resource {int res; } ;
struct bcma_devinfo {struct bhnd_resource* res_agent; } ;
typedef scalar_t__ device_t ;
typedef scalar_t__ bus_size_t ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int bhnd_bus_write_1 (struct bhnd_resource*,scalar_t__,int const) ;
 int bhnd_bus_write_2 (struct bhnd_resource*,scalar_t__,int const) ;
 int bhnd_bus_write_4 (struct bhnd_resource*,scalar_t__,int const) ;
 struct bcma_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 scalar_t__ rman_get_size (int ) ;

__attribute__((used)) static int
bcma_write_config(device_t dev, device_t child, bus_size_t offset,
    const void *value, u_int width)
{
 struct bcma_devinfo *dinfo;
 struct bhnd_resource *r;


 if (device_get_parent(child) != dev)
  return (EINVAL);


 dinfo = device_get_ivars(child);
 if ((r = dinfo->res_agent) == ((void*)0))
  return (ENODEV);


 if (offset > rman_get_size(r->res))
  return (EFAULT);

 if (rman_get_size(r->res) - offset < width)
  return (EFAULT);

 switch (width) {
 case 1:
  bhnd_bus_write_1(r, offset, *(const uint8_t *)value);
  return (0);
 case 2:
  bhnd_bus_write_2(r, offset, *(const uint16_t *)value);
  return (0);
 case 4:
  bhnd_bus_write_4(r, offset, *(const uint32_t *)value);
  return (0);
 default:
  return (EINVAL);
 }
}
