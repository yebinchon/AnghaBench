
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdmatest_softc {int done; int mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct xdmatest_softc*) ;

__attribute__((used)) static int
xdmatest_intr(void *arg)
{
 struct xdmatest_softc *sc;

 sc = arg;

 sc->done = 1;

 mtx_lock(&sc->mtx);
 wakeup(sc);
 mtx_unlock(&sc->mtx);

 return (0);
}
