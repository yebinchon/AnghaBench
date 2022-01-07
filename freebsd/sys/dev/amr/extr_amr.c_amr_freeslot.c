
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_busyslots; int ** amr_busycmd; } ;
struct amr_command {int ac_slot; struct amr_softc* ac_sc; } ;


 int atomic_subtract_int (int *,int) ;
 int debug_called (int) ;
 int panic (char*,int) ;

__attribute__((used)) static __inline int
amr_freeslot(struct amr_command *ac)
{
    struct amr_softc *sc = ac->ac_sc;
    int slot;

    debug_called(3);

    slot = ac->ac_slot;
    if (sc->amr_busycmd[slot] == ((void*)0))
 panic("amr: slot %d not busy?\n", slot);

    sc->amr_busycmd[slot] = ((void*)0);
    atomic_subtract_int(&sc->amr_busyslots, 1);

    return (0);
}
