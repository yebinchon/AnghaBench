
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mp_when; int mp_howlong; int mp_which; } ;
struct mlx_softc {int mlx_dev; TYPE_2__ mlx_pause; TYPE_1__* mlx_enq2; } ;
struct mlx_command {struct mlx_softc* mc_private; int mc_complete; int mc_flags; } ;
struct TYPE_3__ {int me_actual_channels; } ;


 int MLX_CMD_PRIORITY ;
 int MLX_CMD_STARTCHANNEL ;
 int MLX_CMD_STOPCHANNEL ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int device_printf (int ,char*,char*,int) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_make_type2 (struct mlx_command*,int,int,int ,int ,int ,int ,int ,int ,int ) ;
 int mlx_pause_done ;
 int mlx_releasecmd (struct mlx_command*) ;
 scalar_t__ mlx_start (struct mlx_command*) ;
 int time_second ;

__attribute__((used)) static void
mlx_pause_action(struct mlx_softc *sc)
{
    struct mlx_command *mc;
    int failsafe, i, command;

    MLX_IO_ASSERT_LOCKED(sc);


    if (sc->mlx_pause.mp_when == 0) {
 command = MLX_CMD_STARTCHANNEL;
 failsafe = 0;

    } else {
 command = MLX_CMD_STOPCHANNEL;






 failsafe = ((sc->mlx_pause.mp_howlong - time_second) + 5) / 30;
 if (failsafe > 0xf) {
     failsafe = 0xf;
     sc->mlx_pause.mp_howlong = time_second + (0xf * 30) - 5;
 }
    }


    for (i = 0; i < sc->mlx_enq2->me_actual_channels; i++) {
 if ((1 << i) & sc->mlx_pause.mp_which) {


     if ((mc = mlx_alloccmd(sc)) == ((void*)0))
  goto fail;

     mc->mc_flags |= MLX_CMD_PRIORITY;
     if (mlx_getslot(mc))
  goto fail;


     mlx_make_type2(mc, command, (failsafe << 4) | i, 0, 0, 0, 0, 0, 0, 0);
     mc->mc_complete = mlx_pause_done;
     mc->mc_private = sc;
     if (mlx_start(mc))
  goto fail;

     return;

 fail:
     device_printf(sc->mlx_dev, "%s failed for channel %d\n",
     command == MLX_CMD_STOPCHANNEL ? "pause" : "resume", i);
     if (mc != ((void*)0))
  mlx_releasecmd(mc);
 }
    }
}
