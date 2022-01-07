
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_softc {TYPE_1__* mlx_sysdrive; int mlx_dev; } ;
struct mlx_command {int mc_status; } ;
struct TYPE_2__ {int ms_disk; } ;


 int MLX_CMD_CHECKASYNC ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int debug_called (int) ;
 int device_printf (int ,char*,...) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 int mlx_diagnose_command (struct mlx_command*) ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_make_type2 (struct mlx_command*,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int mlx_releasecmd (struct mlx_command*) ;
 scalar_t__ mlx_wait_command (struct mlx_command*) ;

__attribute__((used)) static int
mlx_check(struct mlx_softc *sc, int drive)
{
    struct mlx_command *mc;
    int error;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);


    error = 0x10000;
    if ((mc = mlx_alloccmd(sc)) == ((void*)0))
 goto out;

    if (mlx_getslot(mc))
 goto out;


    mlx_make_type2(mc, MLX_CMD_CHECKASYNC, 0, 0, 0, 0, 0, drive | 0x80, 0, 0);


    if (mlx_wait_command(mc))
 goto out;


    if (mc->mc_status != 0) {
 device_printf(sc->mlx_dev, "CHECK ASYNC failed - %s\n", mlx_diagnose_command(mc));
    } else {
 device_printf(sc->mlx_sysdrive[drive].ms_disk, "consistency check started");
    }
    error = mc->mc_status;

 out:
    if (mc != ((void*)0))
 mlx_releasecmd(mc);
    return(error);
}
