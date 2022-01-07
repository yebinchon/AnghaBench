
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glc_softc {int sc_mtx; } ;


 int glc_init_locked (struct glc_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
glc_init(void *xsc)
{
 struct glc_softc *sc = xsc;

 mtx_lock(&sc->sc_mtx);
 glc_init_locked(sc);
 mtx_unlock(&sc->sc_mtx);
}
