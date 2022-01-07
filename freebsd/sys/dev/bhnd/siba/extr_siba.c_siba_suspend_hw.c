
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct siba_softc {int dummy; } ;
struct TYPE_2__ {int pwrctl; } ;
struct siba_devinfo {scalar_t__ pmu_state; TYPE_1__ pmu; struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef scalar_t__ device_t ;


 int BHND_CLOCK_DYN ;
 int BHND_IOCTL_CLK_EN ;
 int BHND_IOCTL_CLK_FORCE ;
 int DELAY (int) ;
 int EINVAL ;
 int ENODEV ;
 int SIBA_CFG0_IDLOW ;
 int SIBA_CFG0_IMSTATE ;
 int SIBA_CFG0_TMSTATEHIGH ;
 int SIBA_CFG0_TMSTATELOW ;
 int SIBA_IDL_INIT ;
 int SIBA_IM_BY ;
 int SIBA_IM_RJ ;
 int SIBA_LOCK (struct siba_softc*) ;
 scalar_t__ SIBA_PMU_PWRCTL ;
 int SIBA_REG_GET (int,int ) ;
 int SIBA_TMH_BUSY ;
 int SIBA_TML_REJ ;
 int SIBA_TML_RESET ;
 int SIBA_TML_SICF_MASK ;
 int SIBA_TML_SICF_SHIFT ;
 int SIBA_UNLOCK (struct siba_softc*) ;
 int TML_SICF ;
 int bhnd_bus_read_4 (struct bhnd_resource*,int ) ;
 int bhnd_pwrctl_request_clock (int ,scalar_t__,int ) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int) ;
 int siba_wait_target_state (scalar_t__,struct siba_devinfo*,int ,int,int ,int) ;
 int siba_write_target_state (scalar_t__,struct siba_devinfo*,int ,int,int) ;

__attribute__((used)) static int
siba_suspend_hw(device_t dev, device_t child, uint16_t ioctl)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;
 struct bhnd_resource *r;
 uint32_t idl, ts_low, ts_mask;
 uint16_t cflags, clkflags;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);


 if ((r = dinfo->cfg_res[0]) == ((void*)0))
  return (ENODEV);


 clkflags = BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE;
 if (ioctl & clkflags)
  return (EINVAL);


 ts_low = bhnd_bus_read_4(r, SIBA_CFG0_TMSTATELOW);
 if (ts_low & SIBA_TML_RESET)
  return (0);



 cflags = SIBA_REG_GET(ts_low, TML_SICF);
 if (!(cflags & BHND_IOCTL_CLK_EN)) {
  ts_low = SIBA_TML_RESET | SIBA_TML_REJ |
    (ioctl << SIBA_TML_SICF_SHIFT);
  ts_mask = SIBA_TML_RESET | SIBA_TML_REJ | SIBA_TML_SICF_MASK;

  siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW,
      ts_low, ts_mask);
  return (0);
 }


 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW,
     SIBA_TML_REJ, SIBA_TML_REJ);



 error = siba_wait_target_state(child, dinfo, SIBA_CFG0_TMSTATEHIGH,
     0x0, SIBA_TMH_BUSY, 100000);
 if (error)
  return (error);



 idl = bhnd_bus_read_4(r, SIBA_CFG0_IDLOW);
 if (idl & SIBA_IDL_INIT) {

  siba_write_target_state(child, dinfo, SIBA_CFG0_IMSTATE,
      SIBA_IM_RJ, SIBA_IM_RJ);


  error = siba_wait_target_state(child, dinfo, SIBA_CFG0_IMSTATE,
      0x0, SIBA_IM_BY, 100000);
  if (error)
   return (error);
 }




 ts_low = SIBA_TML_RESET |
   (ioctl << SIBA_TML_SICF_SHIFT) |
   (BHND_IOCTL_CLK_EN << SIBA_TML_SICF_SHIFT) |
   (BHND_IOCTL_CLK_FORCE << SIBA_TML_SICF_SHIFT);
 ts_mask = SIBA_TML_RESET |
    SIBA_TML_SICF_MASK;

 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW, ts_low,
     ts_mask);


 DELAY(10);


 if (idl & SIBA_IDL_INIT) {
  siba_write_target_state(child, dinfo, SIBA_CFG0_IMSTATE, 0x0,
      SIBA_IM_RJ);
 }


 siba_write_target_state(child, dinfo, SIBA_CFG0_TMSTATELOW, 0x0,
     (BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE) << SIBA_TML_SICF_SHIFT);
 SIBA_LOCK(sc);
 if (dinfo->pmu_state == SIBA_PMU_PWRCTL) {
  error = bhnd_pwrctl_request_clock(dinfo->pmu.pwrctl, child,
      BHND_CLOCK_DYN);
  SIBA_UNLOCK(sc);

  if (error) {
   device_printf(child, "failed to release clock request: "
       "%d", error);
   return (error);
  }

  return (0);
 } else {
  SIBA_UNLOCK(sc);
  return (0);
 }
}
