
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mly_softc {int mly_cam_channels; int mly_periodic; TYPE_2__** mly_btl; TYPE_1__* mly_controllerparam; } ;
struct TYPE_4__ {int mb_flags; } ;
struct TYPE_3__ {int initiator_id; } ;


 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_BTL_RESCAN ;
 scalar_t__ MLY_BUS_IS_VALID (struct mly_softc*,int) ;
 int MLY_MAX_TARGETS ;
 int MLY_PERIODIC_INTERVAL ;
 int callout_schedule (int *,int) ;
 int debug_called (int) ;
 int hz ;
 int mly_check_event (struct mly_softc*) ;
 int mly_rescan_btl (struct mly_softc*,int,int) ;

__attribute__((used)) static void
mly_periodic(void *data)
{
    struct mly_softc *sc = (struct mly_softc *)data;
    int bus, target;

    debug_called(2);
    MLY_ASSERT_LOCKED(sc);




    for (bus = 0; bus < sc->mly_cam_channels; bus++) {
 if (MLY_BUS_IS_VALID(sc, bus)) {
     for (target = 0; target < MLY_MAX_TARGETS; target++) {


  if (target == sc->mly_controllerparam->initiator_id)
      continue;


  if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_RESCAN)
      mly_rescan_btl(sc, bus, target);
     }
 }
    }


    mly_check_event(sc);


    callout_schedule(&sc->mly_periodic, MLY_PERIODIC_INTERVAL * hz);
}
