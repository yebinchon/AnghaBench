
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int) ;
 int BHND_PMU_MAX_TRANSITION_DLY ;
 int BHND_PMU_MIN_RES_MASK ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int ,int) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_RES_STATE ;
 int DELAY (int) ;
 int ENXIO ;
 int PMURES_BIT (int ) ;
 int PMU_DEBUG (struct bhnd_pmu_softc*,char*,int) ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*) ;
 int RES4315_OTP_PU ;
 int RES4319_OTP_PU ;
 int RES4322_OTP_PU ;
 int RES4325_OTP_PU ;
 int RES4329_OTP_PU ;
 int RES4330_OTP_PU ;
 int RES4336_OTP_PU ;
 int bhnd_pmu_res_deps (struct bhnd_pmu_softc*,int,int) ;
 int bhnd_pmu_res_masks (struct bhnd_pmu_softc*,int*,int *) ;

int
bhnd_pmu_otp_power(struct bhnd_pmu_softc *sc, bool on)
{
 uint32_t deps;
 uint32_t min_mask;
 uint32_t rsrcs;
 int error;


 switch (sc->cid.chip_id) {
 case 135:
 case 134:
 case 133:
 case 128:
  rsrcs = PMURES_BIT(RES4322_OTP_PU);
  break;
 case 137:
  rsrcs = PMURES_BIT(RES4315_OTP_PU);
  break;
 case 132:
  rsrcs = PMURES_BIT(RES4325_OTP_PU);
  break;
 case 131:
  rsrcs = PMURES_BIT(RES4329_OTP_PU);
  break;
 case 136:
  rsrcs = PMURES_BIT(RES4319_OTP_PU);
  break;
 case 129:
  rsrcs = PMURES_BIT(RES4336_OTP_PU);
  break;
 case 130:
  rsrcs = PMURES_BIT(RES4330_OTP_PU);
  break;
 default:

  return (0);
 }


 deps = bhnd_pmu_res_deps(sc, rsrcs, 1);


 if ((error = bhnd_pmu_res_masks(sc, &min_mask, ((void*)0))))
  return (error);

 deps &= ~min_mask;


 if (on) {
  uint32_t state;

  PMU_DEBUG(sc, "Adding rsrc 0x%x to min_res_mask\n",
      rsrcs | deps);
  BHND_PMU_OR_4(sc, BHND_PMU_MIN_RES_MASK, (rsrcs|deps));


  for (int i = 0; i < BHND_PMU_MAX_TRANSITION_DLY; i += 10) {
   state = BHND_PMU_READ_4(sc, BHND_PMU_RES_STATE);
   if ((state & rsrcs) == rsrcs)
    break;

   DELAY(10);
  }

  if ((state & rsrcs) != rsrcs) {
   PMU_LOG(sc, "timeout waiting for OTP resource "
       "enable\n");
   return (ENXIO);
  }
 } else {
  PMU_DEBUG(sc, "Removing rsrc 0x%x from min_res_mask\n",
      rsrcs | deps);
  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK, ~(rsrcs|deps));
 }

 return (0);
}
