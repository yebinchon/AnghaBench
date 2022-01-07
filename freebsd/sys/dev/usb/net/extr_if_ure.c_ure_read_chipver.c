
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ue_dev; } ;
struct ure_softc {TYPE_1__ sc_ue; int sc_chip; } ;


 int URE_CHIP_VER_4C00 ;
 int URE_CHIP_VER_4C10 ;
 int URE_CHIP_VER_5C00 ;
 int URE_CHIP_VER_5C10 ;
 int URE_CHIP_VER_5C20 ;
 int URE_CHIP_VER_5C30 ;
 int URE_MCU_TYPE_PLA ;
 int URE_PLA_TCR1 ;
 int URE_VERSION_MASK ;
 int device_printf (int ,char*,int) ;
 int ure_read_2 (struct ure_softc*,int ,int ) ;

__attribute__((used)) static void
ure_read_chipver(struct ure_softc *sc)
{
 uint16_t ver;

 ver = ure_read_2(sc, URE_PLA_TCR1, URE_MCU_TYPE_PLA) & URE_VERSION_MASK;
 switch (ver) {
 case 0x4c00:
  sc->sc_chip |= URE_CHIP_VER_4C00;
  break;
 case 0x4c10:
  sc->sc_chip |= URE_CHIP_VER_4C10;
  break;
 case 0x5c00:
  sc->sc_chip |= URE_CHIP_VER_5C00;
  break;
 case 0x5c10:
  sc->sc_chip |= URE_CHIP_VER_5C10;
  break;
 case 0x5c20:
  sc->sc_chip |= URE_CHIP_VER_5C20;
  break;
 case 0x5c30:
  sc->sc_chip |= URE_CHIP_VER_5C30;
  break;
 default:
  device_printf(sc->sc_ue.ue_dev,
      "unknown version 0x%04x\n", ver);
  break;
 }
}
