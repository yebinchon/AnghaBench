
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct adb_mouse_softc {int rsel; int sc_cv; } ;


 struct adb_mouse_softc* CDEV_GET_SOFTC (struct cdev*) ;
 int PZERO ;
 int cv_broadcast (int *) ;
 int selwakeuppri (int *,int ) ;

__attribute__((used)) static int
ams_close(struct cdev *dev, int flag, int fmt, struct thread *p)
{
 struct adb_mouse_softc *sc;

 sc = CDEV_GET_SOFTC(dev);

 cv_broadcast(&sc->sc_cv);
 selwakeuppri(&sc->rsel, PZERO);
 return (0);
}
