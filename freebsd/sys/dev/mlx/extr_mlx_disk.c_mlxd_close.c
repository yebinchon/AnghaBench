
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxd_softc {int mlxd_controller; int mlxd_flags; } ;
struct disk {scalar_t__ d_drv1; } ;


 int ENXIO ;
 int MLXD_OPEN ;
 int MLX_CONFIG_LOCK (int ) ;
 int MLX_CONFIG_UNLOCK (int ) ;
 int MLX_IO_LOCK (int ) ;
 int MLX_IO_UNLOCK (int ) ;
 int debug_called (int) ;

__attribute__((used)) static int
mlxd_close(struct disk *dp)
{
    struct mlxd_softc *sc = (struct mlxd_softc *)dp->d_drv1;

    debug_called(1);

    if (sc == ((void*)0))
 return (ENXIO);
    MLX_CONFIG_LOCK(sc->mlxd_controller);
    MLX_IO_LOCK(sc->mlxd_controller);
    sc->mlxd_flags &= ~MLXD_OPEN;
    MLX_IO_UNLOCK(sc->mlxd_controller);
    MLX_CONFIG_UNLOCK(sc->mlxd_controller);
    return (0);
}
