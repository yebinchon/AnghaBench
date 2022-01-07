
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mp_which; scalar_t__ mp_when; int mp_howlong; } ;
struct mlx_softc {int mlx_lastpoll; scalar_t__ mlx_iftype; int mlx_timeout; TYPE_1__ mlx_pause; } ;
struct mlx_rebuild_stat {int dummy; } ;
struct mlx_enquiry_old {int dummy; } ;
struct mlx_enquiry {int dummy; } ;
struct mlx_enq_sys_drive {int dummy; } ;


 int MLX_CMD_ENQSYSDRIVE ;
 int MLX_CMD_ENQUIRY ;
 int MLX_CMD_ENQUIRY_OLD ;
 int MLX_CMD_REBUILDSTAT ;
 scalar_t__ MLX_IFTYPE_2 ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int MLX_MAXDRIVES ;
 int callout_reset (int *,int,void (*) (void*),struct mlx_softc*) ;
 int debug_called (int) ;
 int hz ;
 int imax (int,int) ;
 int mlx_done (struct mlx_softc*,int) ;
 int mlx_enquire (struct mlx_softc*,int ,int,int ) ;
 int mlx_pause_action (struct mlx_softc*) ;
 int mlx_periodic_enquiry ;
 int mlx_periodic_rebuild ;
 int sysbeep (int,int) ;
 int time_second ;

__attribute__((used)) static void
mlx_periodic(void *data)
{
    struct mlx_softc *sc = (struct mlx_softc *)data;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);




    if ((sc->mlx_pause.mp_which != 0) &&
 (sc->mlx_pause.mp_when > 0) &&
 (time_second >= sc->mlx_pause.mp_when)){

 mlx_pause_action(sc);
 sc->mlx_pause.mp_when = 0;
 sysbeep(500, hz);




    } else if ((sc->mlx_pause.mp_which != 0) &&
        (sc->mlx_pause.mp_when == 0)) {


 if (time_second >= sc->mlx_pause.mp_howlong) {
     mlx_pause_action(sc);
     sc->mlx_pause.mp_which = 0;
     sysbeep(500, hz);
 } else {
     sysbeep((time_second % 5) * 100 + 500, hz/8);
 }




    } else if (time_second > (sc->mlx_lastpoll + 10)) {
 sc->mlx_lastpoll = time_second;






 mlx_enquire(sc, (sc->mlx_iftype == MLX_IFTYPE_2) ? MLX_CMD_ENQUIRY_OLD : MLX_CMD_ENQUIRY,
      imax(sizeof(struct mlx_enquiry), sizeof(struct mlx_enquiry_old)), mlx_periodic_enquiry);
 mlx_enquire(sc, MLX_CMD_ENQSYSDRIVE, sizeof(struct mlx_enq_sys_drive) * MLX_MAXDRIVES,
   mlx_periodic_enquiry);

    }



    mlx_enquire(sc, MLX_CMD_REBUILDSTAT, sizeof(struct mlx_rebuild_stat), mlx_periodic_rebuild);


    mlx_done(sc, 1);


    callout_reset(&sc->mlx_timeout, hz, mlx_periodic, sc);
}
