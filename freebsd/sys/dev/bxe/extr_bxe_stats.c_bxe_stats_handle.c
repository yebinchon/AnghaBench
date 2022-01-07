
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int stats_state; int panic; } ;
typedef enum bxe_stats_state { ____Placeholder_bxe_stats_state } bxe_stats_state ;
typedef enum bxe_stats_event { ____Placeholder_bxe_stats_event } bxe_stats_event ;
struct TYPE_2__ {int next_state; int (* action ) (struct bxe_softc*) ;} ;


 int BLOGD (struct bxe_softc*,int ,char*,int,int,int) ;
 int BXE_STATS_LOCK (struct bxe_softc*) ;
 int BXE_STATS_UNLOCK (struct bxe_softc*) ;
 int DBG_STATS ;
 int STATS_EVENT_UPDATE ;
 scalar_t__ __predict_false (int ) ;
 TYPE_1__** bxe_stats_stm ;
 int stub1 (struct bxe_softc*) ;

void bxe_stats_handle(struct bxe_softc *sc,
                      enum bxe_stats_event event)
{
    enum bxe_stats_state state;

    if (__predict_false(sc->panic)) {
        return;
    }

    BXE_STATS_LOCK(sc);
    state = sc->stats_state;
    sc->stats_state = bxe_stats_stm[state][event].next_state;
    BXE_STATS_UNLOCK(sc);

    bxe_stats_stm[state][event].action(sc);

    if (event != STATS_EVENT_UPDATE) {
        BLOGD(sc, DBG_STATS,
              "state %d -> event %d -> state %d\n",
              state, event, sc->stats_state);
    }
}
