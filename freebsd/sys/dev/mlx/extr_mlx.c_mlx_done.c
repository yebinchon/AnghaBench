
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct mlx_softc {int mlx_dev; int mlx_busycmds; struct mlx_command** mlx_busycmd; scalar_t__ (* mlx_findcomplete ) (struct mlx_softc*,size_t*,scalar_t__*) ;} ;
struct mlx_command {scalar_t__ mc_status; } ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 scalar_t__ MLX_STATUS_BUSY ;
 int debug_called (int) ;
 int device_printf (int ,char*,size_t) ;
 int mlx_complete (struct mlx_softc*) ;
 int mlx_startio (struct mlx_softc*) ;
 scalar_t__ stub1 (struct mlx_softc*,size_t*,scalar_t__*) ;

__attribute__((used)) static int
mlx_done(struct mlx_softc *sc, int startio)
{
    struct mlx_command *mc;
    int result;
    u_int8_t slot;
    u_int16_t status;

    debug_called(2);
    MLX_IO_ASSERT_LOCKED(sc);

    result = 0;


    for (;;) {

 if (sc->mlx_findcomplete(sc, &slot, &status)) {
     result = 1;
     mc = sc->mlx_busycmd[slot];
     if (mc != ((void*)0)) {
  if (mc->mc_status == MLX_STATUS_BUSY) {
      mc->mc_status = status;


      sc->mlx_busycmd[slot] = ((void*)0);
      sc->mlx_busycmds--;
  } else {
      device_printf(sc->mlx_dev, "duplicate done event for slot %d\n", slot);
  }
     } else {
  device_printf(sc->mlx_dev, "done event for nonbusy slot %d\n", slot);
     }
 } else {
     break;
 }
    }


    if (result && startio)
 mlx_startio(sc);


    mlx_complete(sc);

    return(result);
}
