
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rt2860_softc {int leds; } ;


 int RT2860_MCU_CMD_LEDS ;
 int rt2860_mcu_cmd (struct rt2860_softc*,int ,int,int ) ;

__attribute__((used)) static void
rt2860_set_leds(struct rt2860_softc *sc, uint16_t which)
{
 rt2860_mcu_cmd(sc, RT2860_MCU_CMD_LEDS,
     which | (sc->leds & 0x7f), 0);
}
