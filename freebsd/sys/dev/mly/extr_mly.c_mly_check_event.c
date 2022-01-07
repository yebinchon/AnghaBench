
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mly_softc {scalar_t__ mly_event_change; scalar_t__ mly_event_waiting; scalar_t__ mly_event_counter; TYPE_3__* mly_mmbox; } ;
struct TYPE_5__ {scalar_t__ change_counter; scalar_t__ next_event; } ;
struct TYPE_4__ {TYPE_2__ status; } ;
struct TYPE_6__ {TYPE_1__ mmm_health; } ;


 int debug (int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int mly_fetch_event (struct mly_softc*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
mly_check_event(struct mly_softc *sc)
{







    if (sc->mly_mmbox->mmm_health.status.change_counter != sc->mly_event_change) {
 sc->mly_event_change = sc->mly_mmbox->mmm_health.status.change_counter;
 debug(1, "event change %d, event status update, %d -> %d", sc->mly_event_change,
       sc->mly_event_waiting, sc->mly_mmbox->mmm_health.status.next_event);
 sc->mly_event_waiting = sc->mly_mmbox->mmm_health.status.next_event;


 wakeup(&sc->mly_event_change);
    }
    if (sc->mly_event_counter != sc->mly_event_waiting)
    mly_fetch_event(sc);
}
