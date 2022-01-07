
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ciss_softc {int ciss_mtx; int ciss_flags; } ;
struct cdev {scalar_t__ si_drv1; } ;


 int CISS_FLAG_CONTROL_OPEN ;
 int debug_called (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ciss_close(struct cdev *dev, int flags, int fmt, struct thread *p)
{
    struct ciss_softc *sc;

    debug_called(1);

    sc = (struct ciss_softc *)dev->si_drv1;

    mtx_lock(&sc->ciss_mtx);
    sc->ciss_flags &= ~CISS_FLAG_CONTROL_OPEN;
    mtx_unlock(&sc->ciss_mtx);
    return (0);
}
