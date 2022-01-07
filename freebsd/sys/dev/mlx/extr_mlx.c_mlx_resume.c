
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int (* mlx_intaction ) (struct mlx_softc*,int ) ;int mlx_state; } ;
typedef int device_t ;


 int MLX_INTACTION_ENABLE ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_STATE_SUSPEND ;
 int debug_called (int) ;
 struct mlx_softc* device_get_softc (int ) ;
 int stub1 (struct mlx_softc*,int ) ;

int
mlx_resume(device_t dev)
{
    struct mlx_softc *sc = device_get_softc(dev);

    debug_called(1);

    MLX_IO_LOCK(sc);
    sc->mlx_state &= ~MLX_STATE_SUSPEND;
    sc->mlx_intaction(sc, MLX_INTACTION_ENABLE);
    MLX_IO_UNLOCK(sc);

    return(0);
}
