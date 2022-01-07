
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beri_vtblk_softc {int sc_mtx; } ;


 int PCATCH ;
 int PZERO ;
 int hz ;
 int kthread_exit () ;
 int msleep (struct beri_vtblk_softc*,int *,int,char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vtblk_notify (struct beri_vtblk_softc*) ;

__attribute__((used)) static void
vtblk_thread(void *arg)
{
 struct beri_vtblk_softc *sc;
 int err;

 sc = arg;

 sx_xlock(&sc->sc_mtx);
 for (;;) {
  err = msleep(sc, &sc->sc_mtx, PCATCH | PZERO, "prd", hz);
  vtblk_notify(sc);
 }
 sx_xunlock(&sc->sc_mtx);

 kthread_exit();
}
