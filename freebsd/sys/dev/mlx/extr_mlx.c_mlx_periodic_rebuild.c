
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_rebuild_status {int rs_code; } ;
struct mlx_softc {int mlx_background; struct mlx_rebuild_status mlx_rebuildstat; int mlx_dev; } ;
struct mlx_command {int mc_status; scalar_t__ mc_data; struct mlx_softc* mc_sc; } ;





 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_REBUILDSTAT_IDLE ;
 int M_DEVBUF ;
 int device_printf (int ,char*) ;
 int free (scalar_t__,int ) ;
 int mlx_releasecmd (struct mlx_command*) ;

__attribute__((used)) static void
mlx_periodic_rebuild(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;
    struct mlx_rebuild_status *mr = (struct mlx_rebuild_status *)mc->mc_data;

    MLX_IO_ASSERT_LOCKED(sc);
    switch(mc->mc_status) {
    case 0:
 sc->mlx_rebuildstat = *mr;


 if (sc->mlx_background == 0) {
     sc->mlx_background = 128;
     device_printf(sc->mlx_dev, "background check/rebuild operation started\n");
 }
 break;

    case 0x0105:
 switch(sc->mlx_background) {
 case 130:
     device_printf(sc->mlx_dev, "consistency check completed\n");
     break;
 case 129:
     device_printf(sc->mlx_dev, "drive rebuild completed\n");
     break;
 case 128:
 default:

     if (sc->mlx_rebuildstat.rs_code != MLX_REBUILDSTAT_IDLE) {
  device_printf(sc->mlx_dev, "background check/rebuild operation completed\n");
     }
 }
 sc->mlx_background = 0;
 sc->mlx_rebuildstat.rs_code = MLX_REBUILDSTAT_IDLE;
 break;
    }
    free(mc->mc_data, M_DEVBUF);
    mlx_releasecmd(mc);
}
