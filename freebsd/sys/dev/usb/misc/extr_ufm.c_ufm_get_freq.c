
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufm_softc {int sc_freq; int sc_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ufm_get_freq(struct ufm_softc *sc, void *addr)
{
 int *valp = (int *)addr;

 mtx_lock(&sc->sc_mtx);
 *valp = sc->sc_freq;
 mtx_unlock(&sc->sc_mtx);
 return (0);
}
