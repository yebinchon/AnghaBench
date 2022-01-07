
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mlxd_softc {TYPE_1__* mlxd_controller; int mlxd_flags; } ;
struct disk {scalar_t__ d_drv1; } ;
struct TYPE_5__ {int mlx_state; } ;


 int ENXIO ;
 int MLXD_OPEN ;
 int MLX_CONFIG_LOCK (TYPE_1__*) ;
 int MLX_CONFIG_UNLOCK (TYPE_1__*) ;
 int MLX_IO_LOCK (TYPE_1__*) ;
 int MLX_IO_UNLOCK (TYPE_1__*) ;
 int MLX_STATE_SHUTDOWN ;
 int debug_called (int) ;

__attribute__((used)) static int
mlxd_open(struct disk *dp)
{
    struct mlxd_softc *sc = (struct mlxd_softc *)dp->d_drv1;

    debug_called(1);

    if (sc == ((void*)0))
 return (ENXIO);


    MLX_CONFIG_LOCK(sc->mlxd_controller);
    MLX_IO_LOCK(sc->mlxd_controller);
    if (sc->mlxd_controller->mlx_state & MLX_STATE_SHUTDOWN) {
 MLX_IO_UNLOCK(sc->mlxd_controller);
 MLX_CONFIG_UNLOCK(sc->mlxd_controller);
 return(ENXIO);
    }

    sc->mlxd_flags |= MLXD_OPEN;
    MLX_IO_UNLOCK(sc->mlxd_controller);
    MLX_CONFIG_UNLOCK(sc->mlxd_controller);
    return (0);
}
