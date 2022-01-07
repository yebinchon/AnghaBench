
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct siba_devinfo {struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef scalar_t__ device_t ;


 int EINVAL ;
 int ENODEV ;
 int SIBA_CFG0_TMSTATELOW ;
 int SIBA_TML_SICF_MASK ;
 int SIBA_TML_SICF_SHIFT ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int siba_write_target_state (scalar_t__,struct siba_devinfo*,int ,int,int) ;

__attribute__((used)) static int
siba_write_ioctl(device_t dev, device_t child, uint16_t value, uint16_t mask)
{
 struct siba_devinfo *dinfo;
 struct bhnd_resource *r;
 uint32_t ts_low, ts_mask;

 if (device_get_parent(child) != dev)
  return (EINVAL);


 dinfo = device_get_ivars(child);
 if ((r = dinfo->cfg_res[0]) == ((void*)0))
  return (ENODEV);


 ts_mask = (mask << SIBA_TML_SICF_SHIFT) & SIBA_TML_SICF_MASK;
 ts_low = (value << SIBA_TML_SICF_SHIFT) & ts_mask;

 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW,
     ts_low, ts_mask);
 return (0);
}
