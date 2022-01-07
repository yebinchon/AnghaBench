
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_dev; int mlx_io_lock; } ;
struct mlx_command {scalar_t__ mc_status; struct mlx_command* mc_private; int * mc_complete; struct mlx_softc* mc_sc; } ;


 int EIO ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 scalar_t__ MLX_STATUS_BUSY ;
 int PCATCH ;
 int PRIBIO ;
 int debug_called (int) ;
 int device_printf (int ,char*,int ) ;
 int hz ;
 int mlx_diagnose_command (struct mlx_command*) ;
 int mlx_start (struct mlx_command*) ;
 int mtx_sleep (struct mlx_command*,int *,int,char*,int ) ;

__attribute__((used)) static int
mlx_wait_command(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    int error, count;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);

    mc->mc_complete = ((void*)0);
    mc->mc_private = mc;
    if ((error = mlx_start(mc)) != 0)
 return(error);

    count = 0;

    while ((mc->mc_status == MLX_STATUS_BUSY) && (count < 30)) {
 mtx_sleep(mc->mc_private, &sc->mlx_io_lock, PRIBIO | PCATCH, "mlxwcmd", hz);
    }

    if (mc->mc_status != 0) {
 device_printf(sc->mlx_dev, "command failed - %s\n", mlx_diagnose_command(mc));
 return(EIO);
    }
    return(0);
}
