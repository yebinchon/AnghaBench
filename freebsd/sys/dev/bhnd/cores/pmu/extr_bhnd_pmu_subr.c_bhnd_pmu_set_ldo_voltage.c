
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; int chipc_dev; } ;


 int BHND_CHIPC_READ_CHIPST (int ) ;







 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_REGCTRL_WRITE (struct bhnd_pmu_softc*,int,int,int) ;
 int CHIPC_CST4325_PMUTOP_2B ;
 int ENODEV ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*,int) ;
int
bhnd_pmu_set_ldo_voltage(struct bhnd_pmu_softc *sc, uint8_t ldo,
    uint8_t voltage)
{
 uint32_t chipst;
 uint32_t regctrl;
 uint8_t shift;
 uint8_t mask;
 uint8_t addr;

 switch (sc->cid.chip_id) {
 case 142:
 case 138:
  switch (ldo) {
  case 133:
   addr = 2;
   shift = 17 + 8;
   mask = 0xf;
   break;
  case 132:
   addr = 3;
   shift = 1;
   mask = 0xf;
   break;
  case 131:
   addr = 3;
   shift = 9;
   mask = 0xf;
   break;
  case 128:
   addr = 3;
   shift = 17;
   mask = 0x3f;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4328/BCM5354 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 case 144:
  switch (ldo) {
  case 128:
   addr = 0;
   shift = 21;
   mask = 0x3f;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4312 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 case 143:
  switch (ldo) {
  case 134:
   addr = 5;
   shift = 9;
   mask = 0xf;
   break;
  case 135:
   addr = 5;
   shift = 13;
   mask = 0xf;
   break;
  case 136:
   addr = 3;
   shift = 20;
   mask = 0x1f;

   chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
   if (BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_PMUTOP_2B))
    voltage ^= 0x9;
   break;
  case 137:
   addr = 3;
   shift = 25;
   mask = 0x1f;

   chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
   if (BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_PMUTOP_2B))
    voltage ^= 0x9;
   break;
  case 130:
   addr = 5;
   shift = 17;
   mask = 0x1f;
   break;
  case 129:
   addr = 6;
   shift = 0;
   mask = 0x1;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4325 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 case 139:
  switch (ldo) {
  case 134:
   addr = 4;
   shift = 1;
   mask = 0xf;
   break;
  case 135:
   addr = 4;
   shift = 5;
   mask = 0xf;
   break;
  case 130:
   addr = 4;
   shift = 17;
   mask = 0xf;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4336 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 case 141:
  switch (ldo) {
  case 136:
   addr = 3;
   shift = 0;
   mask = 0x1f;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4330 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 case 140:
  switch (ldo) {
  case 128:
   addr = 1;
   shift = 0;
   mask = 0xf;
   break;
  default:
   PMU_LOG(sc, "unknown BCM4331 LDO %hhu\n", ldo);
   return (ENODEV);
  }
  break;
 default:
  PMU_LOG(sc, "cannot set LDO voltage on unsupported chip %hu\n",
      sc->cid.chip_id);
  return (ENODEV);
 }

 regctrl = (voltage & mask) << shift;
 BHND_PMU_REGCTRL_WRITE(sc, addr, regctrl, mask << shift);

 return (0);
}
