
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mlx_softc {int mlx_state; } ;
struct cdev {struct mlx_softc* si_drv1; } ;


 int MLX_CONFIG_LOCK (struct mlx_softc*) ;
 int MLX_CONFIG_UNLOCK (struct mlx_softc*) ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_STATE_OPEN ;

int
mlx_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    struct mlx_softc *sc = dev->si_drv1;

    MLX_CONFIG_LOCK(sc);
    MLX_IO_LOCK(sc);
    sc->mlx_state &= ~MLX_STATE_OPEN;
    MLX_IO_UNLOCK(sc);
    MLX_CONFIG_UNLOCK(sc);
    return (0);
}
