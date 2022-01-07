
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct bhnd_pmu_query {int dummy; } ;
struct TYPE_3__ {int freq; scalar_t__ xf; } ;
typedef TYPE_1__ pmu0_xtaltab0_t ;


 int BHND_PMU_CTRL ;
 int BHND_PMU_CTRL_XTALFREQ ;
 scalar_t__ BHND_PMU_GET_BITS (scalar_t__,int ) ;
 scalar_t__ BHND_PMU_READ_4 (struct bhnd_pmu_query*,int ) ;
 int panic (char*,scalar_t__) ;
 TYPE_1__* pmu0_xtaltab0 ;

__attribute__((used)) static uint32_t
bhnd_pmu0_alpclk0(struct bhnd_pmu_query *sc)
{
 const pmu0_xtaltab0_t *xt;
 uint32_t xf;


 xf = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 xf = BHND_PMU_GET_BITS(xf, BHND_PMU_CTRL_XTALFREQ);
 for (xt = pmu0_xtaltab0; xt->freq; xt++)
  if (xt->xf == xf)
   break;


 if (xt == ((void*)0) || xt->freq == 0)
  panic("unsupported frequency: %u", xf);

 return (xt->freq * 1000);
}
