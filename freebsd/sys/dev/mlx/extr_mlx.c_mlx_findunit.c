
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_sysdrive {scalar_t__ ms_disk; } ;
struct mlx_softc {struct mlx_sysdrive* mlx_sysdrive; } ;


 int MLX_CONFIG_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_MAXDRIVES ;
 int device_get_unit (scalar_t__) ;

__attribute__((used)) static struct mlx_sysdrive *
mlx_findunit(struct mlx_softc *sc, int unit)
{
    int i;


    MLX_CONFIG_ASSERT_LOCKED(sc);
    for (i = 0; i < MLX_MAXDRIVES; i++) {

 if (sc->mlx_sysdrive[i].ms_disk != 0) {

     if (unit == device_get_unit(sc->mlx_sysdrive[i].ms_disk))
  return(&sc->mlx_sysdrive[i]);
 }
    }
    return(((void*)0));
}
