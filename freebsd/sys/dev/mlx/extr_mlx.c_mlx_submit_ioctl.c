
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mlx_sysdrive {int ms_state; } ;
struct mlx_softc {int mlx_background; struct mlx_sysdrive* mlx_sysdrive; } ;
typedef int int32_t ;
typedef scalar_t__ caddr_t ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOIOCTL ;
 int ENOMEM ;
 int ERANGE ;


 int MLX_BACKGROUND_CHECK ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int mlx_check (struct mlx_softc*,int) ;

int
mlx_submit_ioctl(struct mlx_softc *sc, struct mlx_sysdrive *drive, u_long cmd,
  caddr_t addr, int32_t flag, struct thread *td)
{
    int *arg = (int *)addr;
    int error, result;

    switch(cmd) {



    case 128:
 MLX_IO_LOCK(sc);
 *arg = drive->ms_state;
 MLX_IO_UNLOCK(sc);
 return(0);




    case 129:
 MLX_IO_LOCK(sc);
 if (sc->mlx_background != 0) {
     MLX_IO_UNLOCK(sc);
     *arg = 0x0106;
     return(EBUSY);
 }
 result = mlx_check(sc, drive - &sc->mlx_sysdrive[0]);
 switch (result) {
 case 0:
     error = 0;
     break;
 case 0x10000:
     error = ENOMEM;
     break;
 case 0x0002:
     error = EIO;
     break;
 case 0x0105:
     error = ERANGE;
     break;
 case 0x0106:
     error = EBUSY;
     break;
 default:
     error = EINVAL;
     break;
 }
 if (error == 0)
     sc->mlx_background = MLX_BACKGROUND_CHECK;
 MLX_IO_UNLOCK(sc);
 *arg = result;
 return(error);

    }
    return(ENOIOCTL);
}
