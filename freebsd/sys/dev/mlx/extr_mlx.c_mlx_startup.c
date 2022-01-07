
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_sysdrive {scalar_t__ ms_disk; int ms_size; int ms_raidlevel; int ms_heads; int ms_sectors; int ms_cylinders; int ms_state; } ;
struct mlx_softc {scalar_t__ mlx_geom; int (* mlx_intaction ) (struct mlx_softc*,int ) ;int mlx_state; int mlx_dev; struct mlx_sysdrive* mlx_sysdrive; } ;
struct mlx_enq_sys_drive {int sd_size; int sd_raidlevel; int sd_state; } ;


 int MLX_CMD_ENQSYSDRIVE ;
 int MLX_CONFIG_LOCK (struct mlx_softc*) ;
 int MLX_CONFIG_UNLOCK (struct mlx_softc*) ;
 scalar_t__ MLX_GEOM_128_32 ;
 int MLX_INTACTION_ENABLE ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_MAXDRIVES ;
 int MLX_STATE_SHUTDOWN ;
 int M_DEVBUF ;
 int bus_generic_attach (int ) ;
 int debug_called (int) ;
 scalar_t__ device_add_child (int ,int *,int) ;
 int device_printf (int ,char*,...) ;
 int device_set_ivars (scalar_t__,struct mlx_sysdrive*) ;
 int free (struct mlx_enq_sys_drive*,int ) ;
 struct mlx_enq_sys_drive* mlx_enquire (struct mlx_softc*,int ,int,int *) ;
 int stub1 (struct mlx_softc*,int ) ;

void
mlx_startup(struct mlx_softc *sc)
{
    struct mlx_enq_sys_drive *mes;
    struct mlx_sysdrive *dr;
    int i, error;

    debug_called(1);





    MLX_IO_LOCK(sc);
    mes = mlx_enquire(sc, MLX_CMD_ENQSYSDRIVE, sizeof(*mes) * MLX_MAXDRIVES, ((void*)0));
    MLX_IO_UNLOCK(sc);
    if (mes == ((void*)0)) {
 device_printf(sc->mlx_dev, "error fetching drive status\n");
 return;
    }


    MLX_CONFIG_LOCK(sc);
    for (i = 0, dr = &sc->mlx_sysdrive[0];
  (i < MLX_MAXDRIVES) && (mes[i].sd_size != 0xffffffff);
  i++, dr++) {

     if (dr->ms_disk == 0) {

     dr->ms_size = mes[i].sd_size;
     dr->ms_raidlevel = mes[i].sd_raidlevel & 0xf;
     dr->ms_state = mes[i].sd_state;


     if (sc->mlx_geom == MLX_GEOM_128_32) {
  dr->ms_heads = 128;
  dr->ms_sectors = 32;
  dr->ms_cylinders = dr->ms_size / (128 * 32);
     } else {
  dr->ms_heads = 255;
  dr->ms_sectors = 63;
  dr->ms_cylinders = dr->ms_size / (255 * 63);
     }
     dr->ms_disk = device_add_child(sc->mlx_dev, ((void*)0), -1);
     if (dr->ms_disk == 0)
  device_printf(sc->mlx_dev, "device_add_child failed\n");
     device_set_ivars(dr->ms_disk, dr);
 }
    }
    free(mes, M_DEVBUF);
    if ((error = bus_generic_attach(sc->mlx_dev)) != 0)
 device_printf(sc->mlx_dev, "bus_generic_attach returned %d", error);


    MLX_IO_LOCK(sc);
    sc->mlx_state &= ~MLX_STATE_SHUTDOWN;


    sc->mlx_intaction(sc, MLX_INTACTION_ENABLE);
    MLX_IO_UNLOCK(sc);
    MLX_CONFIG_UNLOCK(sc);
}
