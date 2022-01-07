
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct powermac_nvram_softc {int sc_isopen; scalar_t__ sc_wpos; scalar_t__ sc_rpos; } ;
struct cdev {struct powermac_nvram_softc* si_drv1; } ;


 int EBUSY ;

__attribute__((used)) static int
powermac_nvram_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct powermac_nvram_softc *sc = dev->si_drv1;

 if (sc->sc_isopen)
  return EBUSY;
 sc->sc_isopen = 1;
 sc->sc_rpos = sc->sc_wpos = 0;
 return 0;
}
