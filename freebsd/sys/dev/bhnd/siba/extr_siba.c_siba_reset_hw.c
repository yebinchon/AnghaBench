
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct siba_devinfo {struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef scalar_t__ device_t ;


 int BHND_IOCTL_CLK_EN ;
 int BHND_IOCTL_CLK_FORCE ;
 int EINVAL ;
 int ENODEV ;
 int SIBA_CFG0_IMSTATE ;
 int SIBA_CFG0_TMSTATEHIGH ;
 int SIBA_CFG0_TMSTATELOW ;
 int SIBA_IM_IBE ;
 int SIBA_IM_TO ;
 int SIBA_TMH_SERR ;
 int SIBA_TML_RESET ;
 int SIBA_TML_SICF_SHIFT ;
 int UINT32_MAX ;
 int bhnd_bus_read_4 (struct bhnd_resource*,int ) ;
 int bhnd_suspend_hw (scalar_t__,int) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int siba_write_target_state (scalar_t__,struct siba_devinfo*,int ,int,int) ;

__attribute__((used)) static int
siba_reset_hw(device_t dev, device_t child, uint16_t ioctl,
    uint16_t reset_ioctl)
{
 struct siba_devinfo *dinfo;
 struct bhnd_resource *r;
 uint32_t ts_low, imstate;
 uint16_t clkflags;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 dinfo = device_get_ivars(child);


 if ((r = dinfo->cfg_res[0]) == ((void*)0))
  return (ENODEV);


 clkflags = BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE;
 if (ioctl & clkflags)
  return (EINVAL);


 if ((error = bhnd_suspend_hw(child, reset_ioctl)))
  return (error);




 ts_low = SIBA_TML_RESET |
   (ioctl << SIBA_TML_SICF_SHIFT) |
   (BHND_IOCTL_CLK_EN << SIBA_TML_SICF_SHIFT) |
   (BHND_IOCTL_CLK_FORCE << SIBA_TML_SICF_SHIFT);

 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW,
     ts_low, UINT32_MAX);


 if (bhnd_bus_read_4(r, SIBA_CFG0_TMSTATEHIGH) & SIBA_TMH_SERR) {
  siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATEHIGH,
      0x0, SIBA_TMH_SERR);
 }


 imstate = bhnd_bus_read_4(r, SIBA_CFG0_IMSTATE);
 if (imstate & (SIBA_IM_IBE|SIBA_IM_TO)) {
  siba_write_target_state(child, dinfo, SIBA_CFG0_IMSTATE, 0x0,
      SIBA_IM_IBE|SIBA_IM_TO);
 }



 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW, 0x0,
     SIBA_TML_RESET);



 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW, 0x0,
     (BHND_IOCTL_CLK_FORCE << SIBA_TML_SICF_SHIFT));

 return (0);
}
