
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mrsas_softc {int dummy; } ;
struct cdev {struct mrsas_softc* si_drv1; } ;



int
mrsas_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct mrsas_softc *sc;

 sc = dev->si_drv1;
 return (0);
}
