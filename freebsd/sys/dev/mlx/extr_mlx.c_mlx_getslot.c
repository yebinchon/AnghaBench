
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_softc {int mlx_busycmds; struct mlx_command** mlx_busycmd; TYPE_1__* mlx_enq2; } ;
struct mlx_command {int mc_flags; int mc_slot; struct mlx_softc* mc_sc; } ;
struct TYPE_2__ {int me_max_commands; } ;


 int EBUSY ;
 int MLX_CMD_PRIORITY ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int debug (int,char*,int) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlx_getslot(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    int slot, limit;

    debug_called(1);

    MLX_IO_ASSERT_LOCKED(sc);




    if (sc->mlx_enq2 != ((void*)0)) {
 limit = sc->mlx_enq2->me_max_commands;
    } else {
 limit = 2;
    }
    if (sc->mlx_busycmds >= ((mc->mc_flags & MLX_CMD_PRIORITY) ? limit : limit - 4))
 return(EBUSY);






    for (slot = 0; slot < limit; slot++) {
 debug(2, "try slot %d", slot);
 if (sc->mlx_busycmd[slot] == ((void*)0))
     break;
    }
    if (slot < limit) {
 sc->mlx_busycmd[slot] = mc;
 sc->mlx_busycmds++;
    }


    if (slot >= limit)
 return(EBUSY);

    debug(2, "got slot %d", slot);
    mc->mc_slot = slot;
    return(0);
}
