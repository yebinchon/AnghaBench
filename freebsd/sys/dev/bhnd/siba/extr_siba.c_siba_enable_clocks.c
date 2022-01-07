
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct siba_softc {int dummy; } ;
struct siba_devinfo {int pmu_state; } ;
typedef scalar_t__ device_t ;


 int BHND_CLOCK_ALP ;
 int BHND_CLOCK_DYN ;
 int BHND_CLOCK_HT ;
 int BHND_CLOCK_ILP ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int SIBA_LOCK (struct siba_softc*) ;




 int SIBA_UNLOCK (struct siba_softc*) ;
 int bhnd_generic_enable_clocks (scalar_t__,scalar_t__,int) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 int device_get_nameunit (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int ,int) ;
 int panic (char*,...) ;

__attribute__((used)) static int
siba_enable_clocks(device_t dev, device_t child, uint32_t clocks)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;

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
  return (bhnd_generic_enable_clocks(dev, child, clocks));

 case 128:
 case 130:
  SIBA_UNLOCK(sc);


  clocks &= ~(BHND_CLOCK_DYN |
       BHND_CLOCK_ILP |
       BHND_CLOCK_ALP |
       BHND_CLOCK_HT);

  if (clocks != 0) {
   device_printf(dev, "%s requested unknown clocks: %#x\n",
       device_get_nameunit(child), clocks);
   return (ENODEV);
  }

  return (0);
 }

 panic("invalid PMU state: %d", dinfo->pmu_state);
}
