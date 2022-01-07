
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct siba_devinfo {TYPE_1__** cfg_res; } ;
typedef scalar_t__ rman_res_t ;
typedef scalar_t__ device_t ;
typedef scalar_t__ bus_size_t ;
struct TYPE_4__ {int res; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int bhnd_bus_read_1 (TYPE_1__*,scalar_t__) ;
 int bhnd_bus_read_2 (TYPE_1__*,scalar_t__) ;
 int bhnd_bus_read_4 (TYPE_1__*,scalar_t__) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 scalar_t__ rman_get_size (int ) ;

__attribute__((used)) static int
siba_read_config(device_t dev, device_t child, bus_size_t offset, void *value,
    u_int width)
{
 struct siba_devinfo *dinfo;
 rman_res_t r_size;


 if (device_get_parent(child) != dev)
  return (EINVAL);


 dinfo = device_get_ivars(child);
 if (dinfo->cfg_res[0] == ((void*)0))
  return (ENODEV);


 r_size = rman_get_size(dinfo->cfg_res[0]->res);
 if (r_size < offset || r_size - offset < width)
  return (EFAULT);

 switch (width) {
 case 1:
  *((uint8_t *)value) = bhnd_bus_read_1(dinfo->cfg_res[0],
      offset);
  return (0);
 case 2:
  *((uint16_t *)value) = bhnd_bus_read_2(dinfo->cfg_res[0],
      offset);
  return (0);
 case 4:
  *((uint32_t *)value) = bhnd_bus_read_4(dinfo->cfg_res[0],
      offset);
  return (0);
 default:
  return (EINVAL);
 }
}
