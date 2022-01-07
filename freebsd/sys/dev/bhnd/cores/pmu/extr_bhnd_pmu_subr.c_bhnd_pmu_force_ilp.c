
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;


 int BHND_PMU_CTRL ;
 int BHND_PMU_CTRL_ALP_REQ_EN ;
 int BHND_PMU_CTRL_HT_REQ_EN ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,int) ;

uint32_t
bhnd_pmu_force_ilp(struct bhnd_pmu_softc *sc, bool force)
{
 uint32_t orig;
 uint32_t pctrl;

 pctrl = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 orig = pctrl;

 if (force)
  pctrl &= ~(BHND_PMU_CTRL_HT_REQ_EN | BHND_PMU_CTRL_ALP_REQ_EN);
 else
  pctrl |= (BHND_PMU_CTRL_HT_REQ_EN | BHND_PMU_CTRL_ALP_REQ_EN);

 BHND_PMU_WRITE_4(sc, BHND_PMU_CTRL, pctrl);

 return (orig);
}
