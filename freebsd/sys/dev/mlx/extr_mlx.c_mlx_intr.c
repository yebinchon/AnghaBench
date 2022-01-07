
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int dummy; } ;


 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int debug_called (int) ;
 int mlx_done (struct mlx_softc*,int) ;

void
mlx_intr(void *arg)
{
    struct mlx_softc *sc = (struct mlx_softc *)arg;

    debug_called(1);


    MLX_IO_LOCK(sc);
    mlx_done(sc, 1);
    MLX_IO_UNLOCK(sc);
}
