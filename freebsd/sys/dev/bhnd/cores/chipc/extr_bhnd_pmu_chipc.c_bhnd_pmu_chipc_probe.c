
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct chipc_softc {int core; } ;
struct chipc_caps {int pmu; } ;
struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;
typedef int desc ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (int ) ;
 int BHND_PMU_CAP ;
 int BHND_PMU_CAP_REV ;
 int BHND_PMU_GET_BITS (int ,int ) ;
 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_pmu_probe (int ) ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
bhnd_pmu_chipc_probe(device_t dev)
{
 struct bhnd_pmu_softc *sc;
 struct chipc_caps *ccaps;
 struct chipc_softc *chipc_sc;
 device_t chipc;
 char desc[34];
 int error;
 uint32_t pcaps;
 uint8_t rev;

 sc = device_get_softc(dev);


 chipc = device_get_parent(dev);
 if (device_get_devclass(chipc) != devclass_find("bhnd_chipc"))
  return (ENXIO);


 ccaps = BHND_CHIPC_GET_CAPS(chipc);
 if (!ccaps->pmu)
  return (ENXIO);


 if ((error = bhnd_pmu_probe(dev)) > 0)
  return (error);


 chipc_sc = device_get_softc(chipc);
 pcaps = bhnd_bus_read_4(chipc_sc->core, BHND_PMU_CAP);


 rev = BHND_PMU_GET_BITS(pcaps, BHND_PMU_CAP_REV);
 snprintf(desc, sizeof(desc), "Broadcom ChipCommon PMU, rev %hhu", rev);
 device_set_desc_copy(dev, desc);

 return (BUS_PROBE_NOWILDCARD);
}
