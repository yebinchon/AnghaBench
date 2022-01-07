
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siba_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ pwrctl; } ;
struct siba_devinfo {scalar_t__ pmu_state; TYPE_1__ pmu; } ;
struct chipc_caps {scalar_t__ pwr_ctrl; scalar_t__ pmu; } ;
typedef scalar_t__ siba_pmu_state ;
typedef scalar_t__ device_t ;
typedef int ccaps ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (scalar_t__) ;
 int BHND_SERVICE_CHIPC ;
 int BHND_SERVICE_PWRCTL ;
 int EINVAL ;
 int ENODEV ;
 int KASSERT (int,char*) ;
 int SIBA_LOCK (struct siba_softc*) ;
 scalar_t__ SIBA_PMU_BHND ;
 scalar_t__ SIBA_PMU_FIXED ;
 scalar_t__ SIBA_PMU_NONE ;
 scalar_t__ SIBA_PMU_PWRCTL ;
 int SIBA_UNLOCK (struct siba_softc*) ;
 int bhnd_generic_alloc_pmu (scalar_t__,scalar_t__) ;
 int bhnd_release_provider (scalar_t__,scalar_t__,int ) ;
 scalar_t__ bhnd_retain_provider (scalar_t__,int ) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 int device_get_nameunit (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct siba_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*) ;
 int memset (struct chipc_caps*,int ,int) ;
 int panic (char*,int ) ;

__attribute__((used)) static int
siba_alloc_pmu(device_t dev, device_t child)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;
 device_t chipc;
 device_t pwrctl;
 struct chipc_caps ccaps;
 siba_pmu_state pmu_state;
 int error;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);
 pwrctl = ((void*)0);


 chipc = bhnd_retain_provider(child, BHND_SERVICE_CHIPC);
 if (chipc != ((void*)0)) {
  ccaps = *BHND_CHIPC_GET_CAPS(chipc);
  bhnd_release_provider(child, chipc, BHND_SERVICE_CHIPC);
 } else {
  memset(&ccaps, 0, sizeof(ccaps));
 }



 if (ccaps.pmu) {
  if ((error = bhnd_generic_alloc_pmu(dev, child)))
   return (error);

  KASSERT(dinfo->pmu_state == SIBA_PMU_BHND,
      ("unexpected PMU state: %d", dinfo->pmu_state));

  return (0);
 }







 if (ccaps.pwr_ctrl) {
  pmu_state = SIBA_PMU_PWRCTL;
  pwrctl = bhnd_retain_provider(child, BHND_SERVICE_PWRCTL);
  if (pwrctl == ((void*)0)) {
   device_printf(dev, "PWRCTL not found\n");
   return (ENODEV);
  }
 } else {
  pmu_state = SIBA_PMU_FIXED;
  pwrctl = ((void*)0);
 }

 SIBA_LOCK(sc);


 if (dinfo->pmu_state != SIBA_PMU_NONE) {
  panic("duplicate PMU allocation for %s",
      device_get_nameunit(child));
 }



 dinfo->pmu_state = pmu_state;
 dinfo->pmu.pwrctl = pwrctl;

 SIBA_UNLOCK(sc);

 return (0);
}
