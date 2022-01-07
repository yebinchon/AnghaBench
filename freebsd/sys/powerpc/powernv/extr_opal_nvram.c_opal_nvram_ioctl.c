
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct opal_nvram_softc {int sc_size; } ;
struct cdev {struct opal_nvram_softc* si_drv1; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;



 int EINVAL ;

__attribute__((used)) static int
opal_nvram_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct opal_nvram_softc *sc = dev->si_drv1;

 switch (cmd) {
 case 128:
  *(off_t *)data = sc->sc_size;
  return (0);
 }
 return (EINVAL);
}
