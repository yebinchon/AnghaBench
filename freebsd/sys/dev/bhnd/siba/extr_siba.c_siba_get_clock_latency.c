
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct siba_softc {int dummy; } ;
struct TYPE_2__ {int pwrctl; } ;
struct siba_devinfo {int pmu_state; TYPE_1__ pmu; } ;
typedef scalar_t__ device_t ;
typedef int bhnd_clock ;



 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int SIBA_LOCK (struct siba_softc*) ;




 int SIBA_UNLOCK (struct siba_softc*) ;
 int bhnd_generic_get_clock_latency (scalar_t__,scalar_t__,int ,int *) ;
 int bhnd_pwrctl_get_clock_latency (int ,int ,int *) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_softc* device_get_softc (scalar_t__) ;
 int panic (char*,...) ;

__attribute__((used)) static int
siba_get_clock_latency(device_t dev, device_t child, bhnd_clock clock,
    u_int *latency)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);

 SIBA_LOCK(sc);
 switch(dinfo->pmu_state) {
 case 129:
  panic("no active PMU request state");

  SIBA_UNLOCK(sc);
  return (ENXIO);

 case 131:
  SIBA_UNLOCK(sc);
  return (bhnd_generic_get_clock_latency(dev, child, clock,
      latency));

 case 128:
   error = bhnd_pwrctl_get_clock_latency(dinfo->pmu.pwrctl, clock,
      latency);
   SIBA_UNLOCK(sc);

   return (error);

 case 130:
  SIBA_UNLOCK(sc);



  switch (clock) {
  case 132:
   *latency = 0;
   return (0);

  default:
   return (ENODEV);
  }

  return (ENODEV);
 }

 panic("invalid PMU state: %d", dinfo->pmu_state);
}
