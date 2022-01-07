
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sc_cnstate {int kdb_locked; int mtx_locked; } ;
struct TYPE_5__ {scalar_t__ mtx_lock; } ;
struct TYPE_4__ {TYPE_3__ video_mtx; } ;
typedef TYPE_1__ sc_softc_t ;


 int DELAY (int) ;
 void* FALSE ;
 int MTX_QUIET ;
 scalar_t__ MTX_UNOWNED ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int TRUE ;
 scalar_t__ kdb_active ;
 scalar_t__ mtx_trylock_spin_flags (TYPE_3__*,int ) ;

__attribute__((used)) static void
sccnscrlock(sc_softc_t *sc, struct sc_cnstate *sp)
{
    int retries;
    if (kdb_active) {
 sp->kdb_locked = sc->video_mtx.mtx_lock == MTX_UNOWNED ||
    SCHEDULER_STOPPED();
 sp->mtx_locked = FALSE;
    } else {
 sp->kdb_locked = FALSE;
 for (retries = 0; retries < 1000; retries++) {
     sp->mtx_locked = mtx_trylock_spin_flags(&sc->video_mtx,
          MTX_QUIET) != 0;
     if (SCHEDULER_STOPPED()) {
  sp->kdb_locked = TRUE;
  sp->mtx_locked = FALSE;
  break;
     }
     if (sp->mtx_locked)
  break;
     DELAY(1);
 }
    }
}
