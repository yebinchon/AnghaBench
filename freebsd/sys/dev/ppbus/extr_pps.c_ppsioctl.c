
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pps_data {int ppbus; int * pps; } ;
struct cdev {int si_drv2; struct pps_data* si_drv1; } ;
typedef int caddr_t ;


 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int pps_ioctl (int ,int ,int *) ;

__attribute__((used)) static int
ppsioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 struct pps_data *sc = dev->si_drv1;
 int subdev = (intptr_t)dev->si_drv2;
 int err;

 ppb_lock(sc->ppbus);
 err = pps_ioctl(cmd, data, &sc->pps[subdev]);
 ppb_unlock(sc->ppbus);
 return (err);
}
