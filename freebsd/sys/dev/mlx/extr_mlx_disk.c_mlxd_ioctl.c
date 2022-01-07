
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mlxd_softc {int mlxd_drive; int mlxd_controller; } ;
struct disk {scalar_t__ d_drv1; } ;


 int ENOIOCTL ;
 int ENOTTY ;
 int ENXIO ;
 int debug (int ,char*,int) ;
 int debug_called (int) ;
 int mlx_submit_ioctl (int ,int ,int ,void*,int,struct thread*) ;

__attribute__((used)) static int
mlxd_ioctl(struct disk *dp, u_long cmd, void *addr, int flag, struct thread *td)
{
    struct mlxd_softc *sc = (struct mlxd_softc *)dp->d_drv1;
    int error;

    debug_called(1);

    if (sc == ((void*)0))
 return (ENXIO);

    if ((error = mlx_submit_ioctl(sc->mlxd_controller, sc->mlxd_drive, cmd, addr, flag, td)) != ENOIOCTL) {
 debug(0, "mlx_submit_ioctl returned %d\n", error);
 return(error);
    }
    return (ENOTTY);
}
