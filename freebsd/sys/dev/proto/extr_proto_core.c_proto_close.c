
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proto_softc {scalar_t__ sc_opencnt; int sc_mtx; } ;
struct TYPE_2__ {int busdma; } ;
struct proto_res {scalar_t__ r_type; scalar_t__ r_opened; TYPE_1__ r_d; } ;
struct cdev {struct proto_res* si_drv2; struct proto_softc* si_drv1; } ;


 int ENXIO ;
 scalar_t__ PROTO_RES_BUSDMA ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int proto_busdma_cleanup (struct proto_softc*,int ) ;

__attribute__((used)) static int
proto_close(struct cdev *cdev, int fflag, int devtype, struct thread *td)
{
 struct proto_res *r;
 struct proto_softc *sc;
 int error;

 sc = cdev->si_drv1;
 mtx_lock(&sc->sc_mtx);
 if (sc->sc_opencnt > 0) {
  r = cdev->si_drv2;
  if (r->r_opened) {
   if (r->r_type == PROTO_RES_BUSDMA)
    proto_busdma_cleanup(sc, r->r_d.busdma);
   r->r_opened = 0;
   sc->sc_opencnt--;
   error = 0;
  } else
   error = ENXIO;
 } else
  error = ENXIO;
 mtx_unlock(&sc->sc_mtx);
 return (error);
}
