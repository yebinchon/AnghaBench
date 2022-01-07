
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct adb_mouse_softc {int sc_mtx; scalar_t__ buttons; scalar_t__ ydelta; scalar_t__ xdelta; scalar_t__ packet_read_len; } ;


 struct adb_mouse_softc* CDEV_GET_SOFTC (struct cdev*) ;
 int ENXIO ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ams_open(struct cdev *dev, int flag, int fmt, struct thread *p)
{
 struct adb_mouse_softc *sc;

 sc = CDEV_GET_SOFTC(dev);
 if (sc == ((void*)0))
  return (ENXIO);

 mtx_lock(&sc->sc_mtx);
 sc->packet_read_len = 0;
 sc->xdelta = 0;
 sc->ydelta = 0;
 sc->buttons = 0;
 mtx_unlock(&sc->sc_mtx);

 return (0);
}
