
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_dev; } ;
struct mlx_command {int mc_status; } ;


 int MLX_CMD_REBUILDASYNC ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int debug_called (int) ;
 int device_printf (int ,char*,int,...) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 int mlx_diagnose_command (struct mlx_command*) ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_make_type2 (struct mlx_command*,int ,int,int,int ,int ,int ,int ,int ,int ) ;
 int mlx_releasecmd (struct mlx_command*) ;
 scalar_t__ mlx_wait_command (struct mlx_command*) ;

__attribute__((used)) static int
mlx_rebuild(struct mlx_softc *sc, int channel, int target)
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


    mlx_make_type2(mc, MLX_CMD_REBUILDASYNC, channel, target, 0, 0, 0, 0, 0, 0);


    if (mlx_wait_command(mc))
 goto out;


    if (mc->mc_status != 0) {
 device_printf(sc->mlx_dev, "REBUILD ASYNC failed - %s\n", mlx_diagnose_command(mc));
    } else {
 device_printf(sc->mlx_dev, "drive rebuild started for %d:%d\n", channel, target);
    }
    error = mc->mc_status;

 out:
    if (mc != ((void*)0))
 mlx_releasecmd(mc);
    return(error);
}
