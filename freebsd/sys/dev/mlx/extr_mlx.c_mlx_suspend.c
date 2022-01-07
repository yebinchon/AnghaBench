
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int (* mlx_intaction ) (struct mlx_softc*,int ) ;int mlx_dev; int mlx_state; } ;
typedef int device_t ;


 int MLX_INTACTION_DISABLE ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_STATE_SUSPEND ;
 int debug_called (int) ;
 struct mlx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mlx_flush (struct mlx_softc*) ;
 int printf (char*,char*) ;
 int stub1 (struct mlx_softc*,int ) ;

int
mlx_suspend(device_t dev)
{
    struct mlx_softc *sc = device_get_softc(dev);

    debug_called(1);

    MLX_IO_LOCK(sc);
    sc->mlx_state |= MLX_STATE_SUSPEND;


    device_printf(sc->mlx_dev, "flushing cache...");
    printf("%s\n", mlx_flush(sc) ? "failed" : "done");

    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);
    MLX_IO_UNLOCK(sc);

    return(0);
}
