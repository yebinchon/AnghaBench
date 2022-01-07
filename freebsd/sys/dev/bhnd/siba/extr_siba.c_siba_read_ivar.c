
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siba_softc {int dummy; } ;
struct TYPE_4__ {int bhnd_info; } ;
struct bhnd_core_info {uintptr_t vendor; uintptr_t device; uintptr_t hwrev; uintptr_t core_idx; uintptr_t unit; } ;
struct TYPE_3__ {struct bhnd_core_info core_info; } ;
struct siba_devinfo {int pmu_state; TYPE_2__ pmu; TYPE_1__ core_id; } ;
typedef int device_t ;
 int ENOENT ;
 int ENXIO ;
 int SIBA_LOCK (struct siba_softc*) ;




 int SIBA_UNLOCK (struct siba_softc*) ;
 uintptr_t bhnd_core_class (struct bhnd_core_info const*) ;
 int bhnd_core_name (struct bhnd_core_info const*) ;
 int bhnd_vendor_name (uintptr_t) ;
 struct siba_devinfo* device_get_ivars (int ) ;
 struct siba_softc* device_get_softc (int ) ;
 int panic (char*,int ) ;

__attribute__((used)) static int
siba_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct siba_softc *sc;
 const struct siba_devinfo *dinfo;
 const struct bhnd_core_info *cfg;

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);
 cfg = &dinfo->core_id.core_info;

 switch (index) {
 case 133:
  *result = cfg->vendor;
  return (0);
 case 138:
  *result = cfg->device;
  return (0);
 case 135:
  *result = cfg->hwrev;
  return (0);
 case 137:
  *result = bhnd_core_class(cfg);
  return (0);
 case 132:
  *result = (uintptr_t) bhnd_vendor_name(cfg->vendor);
  return (0);
 case 136:
  *result = (uintptr_t) bhnd_core_name(cfg);
  return (0);
 case 140:
  *result = cfg->core_idx;
  return (0);
 case 139:
  *result = cfg->unit;
  return (0);
 case 134:
  SIBA_LOCK(sc);
  switch (dinfo->pmu_state) {
  case 129:
   *result = (uintptr_t)((void*)0);
   SIBA_UNLOCK(sc);
   return (0);

  case 131:
   *result = (uintptr_t)dinfo->pmu.bhnd_info;
   SIBA_UNLOCK(sc);
   return (0);

  case 128:
  case 130:
   *result = (uintptr_t)((void*)0);
   SIBA_UNLOCK(sc);
   return (0);
  }

  panic("invalid PMU state: %d", dinfo->pmu_state);
  return (ENXIO);

 default:
  return (ENOENT);
 }
}
