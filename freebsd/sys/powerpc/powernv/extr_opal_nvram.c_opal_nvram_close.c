
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct opal_nvram_softc {scalar_t__ sc_isopen; } ;
struct cdev {struct opal_nvram_softc* si_drv1; } ;



__attribute__((used)) static int
opal_nvram_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct opal_nvram_softc *sc = dev->si_drv1;

 sc->sc_isopen = 0;
 return (0);
}
