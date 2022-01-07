
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_cnstate {int kbd_locked; } ;
typedef int sc_softc_t ;


 int Giant ;
 int kdb_active ;
 scalar_t__ mtx_trylock (int *) ;

__attribute__((used)) static void
sccnkbdlock(sc_softc_t *sc, struct sc_cnstate *sp)
{






    sp->kbd_locked = !kdb_active && mtx_trylock(&Giant);
}
