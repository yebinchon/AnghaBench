
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct consdev {int dummy; } ;
struct TYPE_6__ {int grab_level; int * grab_state; } ;
typedef TYPE_1__ sc_softc_t ;
struct TYPE_7__ {TYPE_1__* sc; } ;


 int atomic_add_int (int *,int) ;
 int atomic_load_acq_int (int *) ;
 TYPE_5__* sc_console ;
 int sccnclose (TYPE_1__*,int *) ;
 int sccnkbdlock (TYPE_1__*,int *) ;
 int sccnscrlock (TYPE_1__*,int *) ;

__attribute__((used)) static void
sc_cnungrab(struct consdev *cp)
{
    sc_softc_t *sc;
    int lev;

    sc = sc_console->sc;
    lev = atomic_load_acq_int(&sc->grab_level) - 1;
    if (lev >= 0 && lev < 2) {
 sccnkbdlock(sc, &sc->grab_state[lev]);
 sccnscrlock(sc, &sc->grab_state[lev]);
 sccnclose(sc, &sc->grab_state[lev]);
    }
    atomic_add_int(&sc->grab_level, -1);
}
