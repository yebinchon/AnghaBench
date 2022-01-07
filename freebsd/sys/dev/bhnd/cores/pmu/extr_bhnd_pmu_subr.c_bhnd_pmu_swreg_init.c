
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chip_id; int chip_rev; } ;
struct TYPE_3__ {int board_flags; } ;
struct bhnd_pmu_softc {TYPE_2__ cid; TYPE_1__ board; int chipc_dev; } ;


 int BHND_BFL_LNLDO2_2P5 ;
 int BHND_CHIPC_READ_CHIPST (int ) ;



 int BHND_PMU_GET_BITS (int ,int ) ;
 int BHND_PMU_REGCTRL_WRITE (struct bhnd_pmu_softc*,int,int,int) ;
 int CHIPC_CST4325_PMUTOP_2B ;
 int SET_LDO_VOLTAGE_CBUCK_BURST ;
 int SET_LDO_VOLTAGE_CBUCK_PWM ;
 int SET_LDO_VOLTAGE_CLDO_BURST ;
 int SET_LDO_VOLTAGE_CLDO_PWM ;
 int SET_LDO_VOLTAGE_LNLDO1 ;
 int SET_LDO_VOLTAGE_LNLDO2_SEL ;
 int bhnd_pmu_set_ldo_voltage (struct bhnd_pmu_softc*,int ,int) ;

void
bhnd_pmu_swreg_init(struct bhnd_pmu_softc *sc)
{
 uint32_t chipst;

 switch (sc->cid.chip_id) {
 case 130:
  if (sc->cid.chip_rev <= 2)
   break;

  chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
  if (BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_PMUTOP_2B)) {
   bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CLDO_PWM,
       0xf);
   bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CLDO_BURST,
       0xf);
  }

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CBUCK_PWM, 0xb);
  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CBUCK_BURST, 0xb);

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_LNLDO1, 0x1);
  if (sc->board.board_flags & BHND_BFL_LNLDO2_2P5) {
   bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_LNLDO2_SEL,
       0x1);
  }

  break;
 case 128:

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CLDO_PWM, 0xe);

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CLDO_BURST, 0xe);

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_LNLDO1, 0xe);
  if (sc->cid.chip_rev == 0)
   BHND_PMU_REGCTRL_WRITE(sc, 2, 0x400000, 0x400000);
  break;

 case 129:

  bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_CBUCK_PWM, 0);
  break;
 default:
  break;
 }
}
