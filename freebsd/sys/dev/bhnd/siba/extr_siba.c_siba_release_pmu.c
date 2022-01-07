
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siba_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ pwrctl; } ;
struct siba_devinfo {int pmu_state; TYPE_1__ pmu; } ;
typedef scalar_t__ device_t ;


 int BHND_CLOCK_DYN ;
 int BHND_SERVICE_PWRCTL ;
 int EINVAL ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 int SIBA_LOCK (struct siba_softc*) ;




 int SIBA_UNLOCK (struct siba_softc*) ;
 int bhnd_generic_release_pmu (scalar_t__,scalar_t__) ;
 int bhnd_pwrctl_request_clock (scalar_t__,scalar_t__,int ) ;
 int bhnd_release_provider (scalar_t__,scalar_t__,int ) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 int device_get_nameunit (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_softc* device_get_softc (scalar_t__) ;
 int panic (char*,int) ;

__attribute__((used)) static int
siba_release_pmu(device_t dev, device_t child)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;
 device_t pwrctl;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);

 SIBA_LOCK(sc);
 switch(dinfo->pmu_state) {
 case 129:
  panic("pmu over-release for %s", device_get_nameunit(child));
  SIBA_UNLOCK(sc);
  return (ENXIO);

 case 131:
  SIBA_UNLOCK(sc);
  return (bhnd_generic_release_pmu(dev, child));

 case 128:


  pwrctl = dinfo->pmu.pwrctl;
  error = bhnd_pwrctl_request_clock(pwrctl, child,
      BHND_CLOCK_DYN);
  if (error) {
   SIBA_UNLOCK(sc);
   return (error);
  }


  dinfo->pmu_state = 129;
  dinfo->pmu.pwrctl = ((void*)0);
  SIBA_UNLOCK(sc);


  bhnd_release_provider(child, pwrctl, BHND_SERVICE_PWRCTL);
  return (0);

 case 130:

  KASSERT(dinfo->pmu.pwrctl == ((void*)0),
      ("PWRCTL reference with FIXED state"));

  dinfo->pmu_state = 129;
  dinfo->pmu.pwrctl = ((void*)0);
  SIBA_UNLOCK(sc);
 }

 panic("invalid PMU state: %d", dinfo->pmu_state);
}
