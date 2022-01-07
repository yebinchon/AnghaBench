
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_dev; int ** mlx_busycmd; int mlx_work; scalar_t__ (* mlx_tryqueue ) (struct mlx_softc*,struct mlx_command*) ;} ;
struct mlx_command {size_t* mc_mailbox; size_t mc_slot; int mc_status; scalar_t__ mc_timeout; struct mlx_softc* mc_sc; } ;


 int EIO ;
 int MLX_STATUS_BUSY ;
 int MLX_STATUS_WEDGED ;
 int TAILQ_INSERT_TAIL (int *,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int device_printf (int ,char*) ;
 int mc_link ;
 int mlx_complete (struct mlx_softc*) ;
 int mlx_done (struct mlx_softc*,int ) ;
 scalar_t__ stub1 (struct mlx_softc*,struct mlx_command*) ;
 scalar_t__ time_second ;

__attribute__((used)) static int
mlx_start(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    int i;

    debug_called(1);


    mc->mc_mailbox[0x1] = mc->mc_slot;


    mc->mc_status = MLX_STATUS_BUSY;


    mc->mc_timeout = time_second + 60;


    for (i = 100000; i > 0; i--) {
 if (sc->mlx_tryqueue(sc, mc)) {

     TAILQ_INSERT_TAIL(&sc->mlx_work, mc, mc_link);
     return (0);
 } else if (i > 1)
     mlx_done(sc, 0);
    }





    sc->mlx_busycmd[mc->mc_slot] = ((void*)0);
    device_printf(sc->mlx_dev, "controller wedged (not taking commands)\n");
    mc->mc_status = MLX_STATUS_WEDGED;
    mlx_complete(sc);
    return(EIO);
}
