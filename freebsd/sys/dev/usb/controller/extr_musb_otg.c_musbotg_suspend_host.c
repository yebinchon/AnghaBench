
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int status_suspend; } ;
struct musbotg_softc {TYPE_1__ sc_flags; } ;


 int MUSB2_MASK_SUSPMODE ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_POWER ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int ) ;

__attribute__((used)) static void
musbotg_suspend_host(struct musbotg_softc *sc)
{
 uint8_t temp;

 if (sc->sc_flags.status_suspend) {
  return;
 }

 temp = MUSB2_READ_1(sc, MUSB2_REG_POWER);
 temp |= MUSB2_MASK_SUSPMODE;
 MUSB2_WRITE_1(sc, MUSB2_REG_POWER, temp);
 sc->sc_flags.status_suspend = 1;
}
