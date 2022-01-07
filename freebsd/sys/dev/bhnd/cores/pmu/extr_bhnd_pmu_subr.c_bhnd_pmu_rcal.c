
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int chip_id; } ;
struct bhnd_pmu_softc {int chipc_dev; TYPE_1__ cid; } ;
struct TYPE_4__ {int chipstatus; } ;


 int BHND_CHIPC_READ_CHIPST (int ) ;


 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int) ;
 int BHND_PMU_CHIP_CONTROL_ADDR ;
 int BHND_PMU_CHIP_CONTROL_DATA ;
 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int ,int) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_REG_CONTROL_ADDR ;
 int BHND_PMU_REG_CONTROL_DATA ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,int) ;
 int CHIPC_CST4325_RCAL_VALID ;
 int DELAY (int) ;
 int KASSERT (int,char*) ;
 int PMU_DEBUG (char*,int ,int) ;
 int R_REG (int *) ;
 TYPE_2__* cc ;

void
bhnd_pmu_rcal(struct bhnd_pmu_softc *sc)
{
 uint32_t chipst;
 uint32_t val;
 uint8_t rcal_code;
 bool bluetooth_rcal;


 bluetooth_rcal = 0;

 switch (sc->cid.chip_id) {
 case 129:
 case 128:

  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);


  BHND_PMU_AND_4(sc, BHND_PMU_CHIP_CONTROL_DATA, ~0x04);

  if (sc->cid.chip_id == 129) {
   chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
   if (BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_RCAL_VALID))
    bluetooth_rcal = 1;
  }


  BHND_PMU_AND_4(sc, BHND_PMU_CHIP_CONTROL_DATA, 0x04);


  for (int i = 0; i < (10 * 1000 * 1000); i++) {
   chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);

   if (chipst & 0x08)
    break;

   DELAY(10);
  }
  KASSERT((chipst & 0x08) != 0, ("rcal completion timeout"));

  if (bluetooth_rcal) {
   rcal_code = 0x6;
  } else {

   rcal_code = (uint8_t) (chipst >> 5) & 0x0f;
  }

  PMU_DEBUG("RCal completed, status 0x%x, code 0x%x\n",
      R_REG(&cc->chipstatus), rcal_code);


  BHND_PMU_WRITE_4(sc, BHND_PMU_REG_CONTROL_ADDR, 0);
  val = BHND_PMU_READ_4(sc, BHND_PMU_REG_CONTROL_DATA);
  val &= ~((uint32_t) 0x07 << 29);
  val |= (uint32_t) (rcal_code & 0x07) << 29;
  BHND_PMU_WRITE_4(sc, BHND_PMU_REG_CONTROL_DATA, val);

  BHND_PMU_WRITE_4(sc, BHND_PMU_REG_CONTROL_ADDR, 1);
  val = BHND_PMU_READ_4(sc, BHND_PMU_REG_CONTROL_DATA);
  val &= ~(uint32_t) 0x01;
  val |= (uint32_t) ((rcal_code >> 3) & 0x01);
  BHND_PMU_WRITE_4(sc, BHND_PMU_REG_CONTROL_DATA, val);


  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_ADDR, 0);
  val = BHND_PMU_READ_4(sc, BHND_PMU_CHIP_CONTROL_DATA);
  val &= ~((uint32_t) 0x03 << 30);
  val |= (uint32_t) (rcal_code & 0x03) << 30;
  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_DATA, val);

  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);
  val = BHND_PMU_READ_4(sc, BHND_PMU_CHIP_CONTROL_DATA);
  val &= ~(uint32_t) 0x03;
  val |= (uint32_t) ((rcal_code >> 2) & 0x03);
  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_DATA, val);


  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_ADDR, 0);
  BHND_PMU_OR_4(sc, BHND_PMU_CHIP_CONTROL_DATA, (0x01 << 29));


  BHND_PMU_WRITE_4(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);
  BHND_PMU_AND_4(sc, BHND_PMU_CHIP_CONTROL_DATA, ~0x04);
  break;
 default:
  break;
 }
}
