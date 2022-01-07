
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_busyslots; struct amr_command** amr_busycmd; } ;
struct amr_command {int ac_slot; int ac_flags; struct amr_softc* ac_sc; } ;


 int AMR_CMD_BUSY ;
 int ENOMEM ;
 int amr_freeslot (struct amr_command*) ;
 int amr_mapcmd (struct amr_command*) ;
 int atomic_add_int (int *,int) ;
 int debug_called (int) ;
 int panic (char*,int) ;

__attribute__((used)) static int
amr_start(struct amr_command *ac)
{
    struct amr_softc *sc;
    int error = 0;
    int slot;

    debug_called(3);


    sc = ac->ac_sc;
    ac->ac_flags |= AMR_CMD_BUSY;


    slot = ac->ac_slot;
    if (sc->amr_busycmd[slot] != ((void*)0))
 panic("amr: slot %d busy?\n", slot);
    sc->amr_busycmd[slot] = ac;
    atomic_add_int(&sc->amr_busyslots, 1);


    if ((error = amr_mapcmd(ac)) == ENOMEM) {




 amr_freeslot(ac);
    }

    return (error);
}
