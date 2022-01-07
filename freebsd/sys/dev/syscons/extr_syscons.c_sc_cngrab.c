
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct consdev {int dummy; } ;
struct TYPE_6__ {int * grab_state; int grab_level; } ;
typedef TYPE_1__ sc_softc_t ;
struct TYPE_7__ {TYPE_1__* sc; } ;


 int atomic_fetchadd_int (int *,int) ;
 TYPE_5__* sc_console ;
 int sccnkbdunlock (TYPE_1__*,int *) ;
 int sccnopen (TYPE_1__*,int *,int) ;
 int sccnscrunlock (TYPE_1__*,int *) ;

__attribute__((used)) static void
sc_cngrab(struct consdev *cp)
{
    sc_softc_t *sc;
    int lev;

    sc = sc_console->sc;
    lev = atomic_fetchadd_int(&sc->grab_level, 1);
    if (lev >= 0 && lev < 2) {
 sccnopen(sc, &sc->grab_state[lev], 1 | 2);
 sccnscrunlock(sc, &sc->grab_state[lev]);
 sccnkbdunlock(sc, &sc->grab_state[lev]);
    }
}
