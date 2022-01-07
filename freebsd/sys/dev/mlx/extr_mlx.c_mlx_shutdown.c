
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int dummy; } ;
typedef int device_t ;


 int MLX_CONFIG_LOCK (struct mlx_softc*) ;
 int MLX_CONFIG_UNLOCK (struct mlx_softc*) ;
 struct mlx_softc* device_get_softc (int ) ;
 int mlx_shutdown_locked (struct mlx_softc*) ;

int
mlx_shutdown(device_t dev)
{
    struct mlx_softc *sc = device_get_softc(dev);
    int error;

    MLX_CONFIG_LOCK(sc);
    error = mlx_shutdown_locked(sc);
    MLX_CONFIG_UNLOCK(sc);
    return (error);
}
