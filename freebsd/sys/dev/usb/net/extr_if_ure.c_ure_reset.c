
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ue_dev; } ;
struct ure_softc {TYPE_1__ sc_ue; } ;


 int URE_CR_RST ;
 int URE_MCU_TYPE_PLA ;
 int URE_PLA_CR ;
 int URE_TIMEOUT ;
 int device_printf (int ,char*) ;
 int hz ;
 int uether_pause (TYPE_1__*,int) ;
 int ure_read_1 (struct ure_softc*,int ,int ) ;
 int ure_write_1 (struct ure_softc*,int ,int ,int) ;

__attribute__((used)) static void
ure_reset(struct ure_softc *sc)
{
 int i;

 ure_write_1(sc, URE_PLA_CR, URE_MCU_TYPE_PLA, URE_CR_RST);

 for (i = 0; i < URE_TIMEOUT; i++) {
  if (!(ure_read_1(sc, URE_PLA_CR, URE_MCU_TYPE_PLA) &
      URE_CR_RST))
   break;
  uether_pause(&sc->sc_ue, hz / 100);
 }
 if (i == URE_TIMEOUT)
  device_printf(sc->sc_ue.ue_dev, "reset never completed\n");
}
