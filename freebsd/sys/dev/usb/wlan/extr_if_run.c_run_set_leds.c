
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct run_softc {int leds; } ;


 int RT2860_MCU_CMD_LEDS ;
 int run_mcu_cmd (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_set_leds(struct run_softc *sc, uint16_t which)
{
 (void)run_mcu_cmd(sc, RT2860_MCU_CMD_LEDS,
     which | (sc->leds & 0x7f));
}
