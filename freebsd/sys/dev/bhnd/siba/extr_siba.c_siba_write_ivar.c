
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siba_softc {int dummy; } ;
struct TYPE_2__ {void* bhnd_info; } ;
struct siba_devinfo {int pmu_state; TYPE_1__ pmu; } ;
typedef int device_t ;
 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int SIBA_LOCK (struct siba_softc*) ;




 int SIBA_UNLOCK (struct siba_softc*) ;
 struct siba_devinfo* device_get_ivars (int ) ;
 struct siba_softc* device_get_softc (int ) ;
 int panic (char*,int) ;

__attribute__((used)) static int
siba_write_ivar(device_t dev, device_t child, int index, uintptr_t value)
{
 struct siba_softc *sc;
 struct siba_devinfo *dinfo;

 sc = device_get_softc(dev);
 dinfo = device_get_ivars(child);

 switch (index) {
 case 133:
 case 138:
 case 135:
 case 137:
 case 132:
 case 136:
 case 140:
 case 139:
  return (EINVAL);
 case 134:
  SIBA_LOCK(sc);
  switch (dinfo->pmu_state) {
  case 129:
  case 131:
   dinfo->pmu.bhnd_info = (void *)value;
   dinfo->pmu_state = 131;
   SIBA_UNLOCK(sc);
   return (0);

  case 128:
  case 130:
   panic("bhnd_set_pmu_info() called with siba PMU state "
       "%d", dinfo->pmu_state);
   return (ENXIO);
  }

  panic("invalid PMU state: %d", dinfo->pmu_state);
  return (ENXIO);

 default:
  return (ENOENT);
 }
}
