
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_mtx; } ;
typedef int cr_qhead_t ;


 int STAILQ_INIT (int *) ;
 int ciss_complete (struct ciss_softc*,int *) ;
 int ciss_done (struct ciss_softc*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ciss_intr(void *arg)
{
    cr_qhead_t qh;
    struct ciss_softc *sc = (struct ciss_softc *)arg;





    STAILQ_INIT(&qh);
    ciss_done(sc, &qh);
    mtx_lock(&sc->ciss_mtx);
    ciss_complete(sc, &qh);
    mtx_unlock(&sc->ciss_mtx);
}
