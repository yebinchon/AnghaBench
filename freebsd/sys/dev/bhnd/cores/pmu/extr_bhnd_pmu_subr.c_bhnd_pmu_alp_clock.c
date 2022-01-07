
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int chip_id; } ;
struct bhnd_pmu_query {TYPE_1__ cid; } ;
struct TYPE_4__ {int pmurev; int chiprev; int chip; } ;
 int BHND_PMU_ALP_CLOCK ;
 int PMU_DEBUG (char*,int ,int ,int ,int) ;
 int bcm_chipname (int ,int ,int) ;
 int bhnd_pmu0_alpclk0 (struct bhnd_pmu_query*) ;
 int bhnd_pmu1_alpclk0 (struct bhnd_pmu_query*) ;
 int chn ;
 TYPE_2__* sih ;

uint32_t
bhnd_pmu_alp_clock(struct bhnd_pmu_query *sc)
{
 uint32_t clock;

 clock = BHND_PMU_ALP_CLOCK;
 switch (sc->cid.chip_id) {
 case 147:
 case 132:
  clock = bhnd_pmu0_alpclk0(sc);
  break;
 case 164:
 case 163:
 case 148:
 case 146:
 case 145:
 case 143:
  clock = bhnd_pmu1_alpclk0(sc);
  break;
 case 167:
 case 162:
 case 161:
 case 154:
 case 160:
 case 169:
 case 168:
 case 159:
 case 158:
 case 141:
 case 140:
 case 157:
 case 152:
 case 151:
 case 149:
 case 153:
 case 150:
 case 144:
 case 138:
 case 165:
 case 156:
 case 155:
 case 139:
 case 128:
 case 142:
 case 136:
 case 134:
 case 135:
 case 166:
 case 130:
 case 133:
 case 129:

  clock = 20000 * 1000;
  break;
 case 131:
 case 137:

  clock = 25000 * 1000;
  break;
 default:
  PMU_DEBUG("No ALP clock specified "
    "for chip %s rev %d pmurev %d, using default %d Hz\n",
    bcm_chipname(sih->chip, chn, 8), sih->chiprev,
    sih->pmurev, clock);
  break;
 }

 return (clock);
}
