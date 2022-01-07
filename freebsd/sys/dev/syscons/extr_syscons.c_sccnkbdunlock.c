
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_cnstate {scalar_t__ kbd_locked; } ;
typedef int sc_softc_t ;


 scalar_t__ FALSE ;
 int Giant ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
sccnkbdunlock(sc_softc_t *sc, struct sc_cnstate *sp)
{
    if (sp->kbd_locked)
 mtx_unlock(&Giant);
    sp->kbd_locked = FALSE;
}
