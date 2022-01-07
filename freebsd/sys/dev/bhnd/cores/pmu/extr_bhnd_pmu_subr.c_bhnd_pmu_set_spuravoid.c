
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
typedef int bhnd_pmu_spuravoid ;


 int BHND_CCS_HTAVAIL ;
 scalar_t__ BHND_CHIPID_BCM4336 ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_MAX_RES_MASK ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_RES4336_HT_AVAIL ;
 int PMU_WAIT_CLKST (struct bhnd_pmu_softc*,int ,int ) ;
 int bhnd_pmu_spuravoid_pllupdate (struct bhnd_pmu_softc*,int ) ;

int
bhnd_pmu_set_spuravoid(struct bhnd_pmu_softc *sc, bhnd_pmu_spuravoid spuravoid)
{
 int error;


 if (sc->cid.chip_id == BHND_CHIPID_BCM4336) {
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
      ~BHND_PMU_RES4336_HT_AVAIL);


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);
 }


 error = bhnd_pmu_spuravoid_pllupdate(sc, spuravoid);


 if (sc->cid.chip_id == BHND_CHIPID_BCM4336) {
  BHND_PMU_OR_4(sc, BHND_PMU_MAX_RES_MASK,
      BHND_PMU_RES4336_HT_AVAIL);
 }

 return (error);
}
