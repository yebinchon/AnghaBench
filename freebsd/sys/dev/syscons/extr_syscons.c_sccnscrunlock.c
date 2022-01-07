
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sc_cnstate {scalar_t__ kdb_locked; scalar_t__ mtx_locked; } ;
struct TYPE_3__ {int video_mtx; } ;
typedef TYPE_1__ sc_softc_t ;


 scalar_t__ FALSE ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
sccnscrunlock(sc_softc_t *sc, struct sc_cnstate *sp)
{
    if (sp->mtx_locked)
 mtx_unlock_spin(&sc->video_mtx);
    sp->mtx_locked = sp->kdb_locked = FALSE;
}
