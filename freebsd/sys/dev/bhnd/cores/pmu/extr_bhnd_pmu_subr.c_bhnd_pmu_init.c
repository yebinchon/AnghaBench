
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ chip_id; int chip_rev; } ;
struct bhnd_pmu_softc {int chipc_dev; TYPE_1__ cid; } ;


 scalar_t__ BHND_CHIPID_BCM4319 ;
 scalar_t__ BHND_CHIPID_BCM4329 ;
 int BHND_NVAR_XTALFREQ ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_CTRL ;
 int BHND_PMU_CTRL_NOILP_ON_WAIT ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_REGCTRL_WRITE (struct bhnd_pmu_softc*,int,int,int) ;
 int BHND_PMU_REV (struct bhnd_pmu_softc*) ;
 int ENOENT ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*,int) ;
 int bhnd_nvram_getvar_uint32 (int ,int ,int *) ;
 int bhnd_pmu_measure_alpclk (struct bhnd_pmu_softc*) ;
 int bhnd_pmu_pll_init (struct bhnd_pmu_softc*,int ) ;
 int bhnd_pmu_res_init (struct bhnd_pmu_softc*) ;
 int bhnd_pmu_swreg_init (struct bhnd_pmu_softc*) ;

int
bhnd_pmu_init(struct bhnd_pmu_softc *sc)
{
 uint32_t xtalfreq;
 int error;

 if (BHND_PMU_REV(sc) == 1) {
  BHND_PMU_AND_4(sc, BHND_PMU_CTRL, ~BHND_PMU_CTRL_NOILP_ON_WAIT);
 } else if (BHND_PMU_REV(sc) >= 2) {
  BHND_PMU_OR_4(sc, BHND_PMU_CTRL, BHND_PMU_CTRL_NOILP_ON_WAIT);
 }

 if (sc->cid.chip_id == BHND_CHIPID_BCM4329 && sc->cid.chip_rev == 2) {

  BHND_PMU_REGCTRL_WRITE(sc, 2, 0x100, ~0);
  BHND_PMU_REGCTRL_WRITE(sc, 3, 0x4, ~0);
 }

 if (sc->cid.chip_id == BHND_CHIPID_BCM4319) {

  BHND_PMU_REGCTRL_WRITE(sc, 2, 0x00000005, 0x00000007);
 }



 error = bhnd_nvram_getvar_uint32(sc->chipc_dev, BHND_NVAR_XTALFREQ,
     &xtalfreq);


 if (error) {
  if (error != ENOENT)
   PMU_LOG(sc, "error fetching xtalfreq: %d\n", error);

  xtalfreq = bhnd_pmu_measure_alpclk(sc);
 }


 bhnd_pmu_pll_init(sc, xtalfreq);

 if ((error = bhnd_pmu_res_init(sc)))
  return (error);

 bhnd_pmu_swreg_init(sc);

 return (0);
}
