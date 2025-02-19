
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proto_softc {scalar_t__ sc_opencnt; int sc_mtx; } ;
struct proto_res {int r_opened; } ;
struct cdev {struct proto_res* si_drv2; struct proto_softc* si_drv1; } ;


 int EBUSY ;
 int ENXIO ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
proto_open(struct cdev *cdev, int oflags, int devtype, struct thread *td)
{
 struct proto_res *r;
 struct proto_softc *sc;
 int error;

 sc = cdev->si_drv1;
 mtx_lock(&sc->sc_mtx);
 if (sc->sc_opencnt >= 0) {
  r = cdev->si_drv2;
  if (!r->r_opened) {
   r->r_opened = 1;
   sc->sc_opencnt++;
   error = 0;
  } else
   error = EBUSY;
 } else
  error = ENXIO;
 mtx_unlock(&sc->sc_mtx);
 return (error);
}
