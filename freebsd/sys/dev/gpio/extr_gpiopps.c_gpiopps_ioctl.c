
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pps_softc {int pps_mtx; int pps_state; } ;
struct cdev {struct pps_softc* si_drv1; } ;
typedef int caddr_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pps_ioctl (int ,int ,int *) ;

__attribute__((used)) static int
gpiopps_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 struct pps_softc *sc = dev->si_drv1;
 int err;


 mtx_lock(&sc->pps_mtx);
 err = pps_ioctl(cmd, data, &sc->pps_state);
 mtx_unlock(&sc->pps_mtx);

 return err;
}
