
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_softc {TYPE_1__* mlx_sysdrive; int mlx_dev; int (* mlx_intaction ) (struct mlx_softc*,int ) ;int mlx_state; } ;
struct TYPE_2__ {scalar_t__ ms_disk; } ;


 int MLX_CONFIG_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_INTACTION_DISABLE ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_MAXDRIVES ;
 int MLX_STATE_SHUTDOWN ;
 int debug_called (int) ;
 int device_delete_child (int ,scalar_t__) ;
 int device_printf (int ,char*) ;
 scalar_t__ mlx_flush (struct mlx_softc*) ;
 int printf (char*) ;
 int stub1 (struct mlx_softc*,int ) ;

__attribute__((used)) static int
mlx_shutdown_locked(struct mlx_softc *sc)
{
    int i, error;

    debug_called(1);

    MLX_CONFIG_ASSERT_LOCKED(sc);

    MLX_IO_LOCK(sc);
    sc->mlx_state |= MLX_STATE_SHUTDOWN;
    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);


    device_printf(sc->mlx_dev, "flushing cache...");
    if (mlx_flush(sc)) {
 printf("failed\n");
    } else {
 printf("done\n");
    }
    MLX_IO_UNLOCK(sc);


    for (i = 0; i < MLX_MAXDRIVES; i++) {
 if (sc->mlx_sysdrive[i].ms_disk != 0) {
     if ((error = device_delete_child(sc->mlx_dev, sc->mlx_sysdrive[i].ms_disk)) != 0)
  return (error);
     sc->mlx_sysdrive[i].ms_disk = 0;
 }
    }

    return (0);
}
