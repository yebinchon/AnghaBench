
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chip_id; int chip_rev; } ;
struct bhnd_pmu_query {TYPE_2__ cid; int io_ctx; TYPE_1__* io; } ;
struct TYPE_3__ {int (* rd_chipst ) (int ) ;} ;
 int BHND_PMU4706_MAINPLL_PLL0 ;
 int BHND_PMU4716_MAINPLL_PLL0 ;
 int BHND_PMU5356_MAINPLL_PLL0 ;
 int BHND_PMU5357_MAINPLL_PLL0 ;
 int BHND_PMU5_MAINPLL_SI ;
 int BHND_PMU6_MAINPLL_SI ;
 int BHND_PMU_HT_CLOCK ;
 int BHND_PMU_REV (struct bhnd_pmu_query*) ;
 int CHIPC_CST43236_BP_CLK ;
 int CHIPC_CST43237_BP_CLK ;
 int PMU_LOG (struct bhnd_pmu_query*,char*,int,int ,int ,int) ;
 int bhnd_pmu0_cpuclk0 (struct bhnd_pmu_query*) ;
 int bhnd_pmu1_cpuclk0 (struct bhnd_pmu_query*) ;
 int bhnd_pmu5_clock (struct bhnd_pmu_query*,int ,int ) ;
 int bhnd_pmu6_4706_clock (struct bhnd_pmu_query*,int ,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

uint32_t
bhnd_pmu_si_clock(struct bhnd_pmu_query *sc)
{
 uint32_t chipst;
 uint32_t clock;

 clock = BHND_PMU_HT_CLOCK;

 switch (sc->cid.chip_id) {
 case 158:
 case 157:
 case 152:
 case 156:
 case 164:
 case 163:
 case 155:
 case 139:
 case 154:
 case 138:
 case 153:
 case 142:
 case 137:
 case 128:
 case 140:

  clock = 96000 * 1000;
  break;

 case 135:
 case 133:
 case 134:
  clock = bhnd_pmu5_clock(sc, BHND_PMU4716_MAINPLL_PLL0,
      BHND_PMU5_MAINPLL_SI);
  break;

 case 146:
  clock = bhnd_pmu1_cpuclk0(sc);
  break;

 case 145:
  clock = bhnd_pmu0_cpuclk0(sc);
  break;

 case 144:
  if (sc->cid.chip_rev == 0)
   clock = 38400 * 1000;
  else
   clock = bhnd_pmu1_cpuclk0(sc);
  break;

 case 160:
 case 159:
 case 141:
 case 143:
  clock = bhnd_pmu1_cpuclk0(sc);
  break;

 case 162:
 case 161:

  clock = 80000 * 1000;
  break;

 case 151:
 case 150:
 case 149:
 case 147:
  chipst = sc->io->rd_chipst(sc->io_ctx);
  if (chipst & CHIPC_CST43236_BP_CLK)
   clock = 120000 * 1000;
  else
   clock = 96000 * 1000;
  break;
 case 148:
  chipst = sc->io->rd_chipst(sc->io_ctx);
  if (chipst & CHIPC_CST43237_BP_CLK)
   clock = 96000 * 1000;
  else
   clock = 80000 * 1000;
  break;
 case 131:
  clock = bhnd_pmu5_clock(sc, BHND_PMU5356_MAINPLL_PLL0,
      BHND_PMU5_MAINPLL_SI);
  break;
 case 130:
 case 132:
  clock = bhnd_pmu5_clock(sc, BHND_PMU5357_MAINPLL_PLL0,
      BHND_PMU5_MAINPLL_SI);
  break;
 case 136:
  clock = bhnd_pmu6_4706_clock(sc, BHND_PMU4706_MAINPLL_PLL0,
      BHND_PMU6_MAINPLL_SI);
  break;
 case 129:
  clock = 75000000;
  break;
 default:
  PMU_LOG(sc, "No backplane clock specified for chip %#hx rev "
      "%hhd pmurev %hhd, using default %dHz\n",
      sc->cid.chip_id, sc->cid.chip_rev, BHND_PMU_REV(sc), clock);
  break;
 }

 return (clock);
}
