
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_dev; int mlx_work; } ;
struct mlx_command {scalar_t__ mc_status; struct mlx_softc* mc_sc; int * mc_private; int * mc_complete; } ;


 int EIO ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 scalar_t__ MLX_STATUS_BUSY ;
 int TAILQ_REMOVE (int *,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int device_printf (int ,char*,int ) ;
 int mc_link ;
 int mlx_diagnose_command (struct mlx_command*) ;
 int mlx_done (struct mlx_softc*,int) ;
 int mlx_start (struct mlx_command*) ;

__attribute__((used)) static int
mlx_poll_command(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    int error, count;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);

    mc->mc_complete = ((void*)0);
    mc->mc_private = ((void*)0);
    if ((error = mlx_start(mc)) != 0)
 return(error);

    count = 0;
    do {

 mlx_done(mc->mc_sc, 1);

    } while ((mc->mc_status == MLX_STATUS_BUSY) && (count++ < 15000000));
    if (mc->mc_status != MLX_STATUS_BUSY) {
 TAILQ_REMOVE(&sc->mlx_work, mc, mc_link);
 return(0);
    }
    device_printf(sc->mlx_dev, "command failed - %s\n", mlx_diagnose_command(mc));
    return(EIO);
}
