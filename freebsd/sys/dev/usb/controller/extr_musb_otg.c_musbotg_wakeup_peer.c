
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int bus_mtx; } ;
struct TYPE_3__ {int status_suspend; } ;
struct musbotg_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;


 int MUSB2_MASK_RESUME ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_POWER ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int ) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
musbotg_wakeup_peer(struct musbotg_softc *sc)
{
 uint8_t temp;

 if (!(sc->sc_flags.status_suspend)) {
  return;
 }

 temp = MUSB2_READ_1(sc, MUSB2_REG_POWER);
 temp |= MUSB2_MASK_RESUME;
 MUSB2_WRITE_1(sc, MUSB2_REG_POWER, temp);



 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 125);

 temp = MUSB2_READ_1(sc, MUSB2_REG_POWER);
 temp &= ~MUSB2_MASK_RESUME;
 MUSB2_WRITE_1(sc, MUSB2_REG_POWER, temp);
}
