
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_cache_softc {int sc_maxent; int sc_nused; int sc_usedlist; int sc_mtx; } ;
struct g_cache_desc {int dummy; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct g_cache_desc*,int ) ;
 int MA_OWNED ;
 int TAILQ_EMPTY (int *) ;
 struct g_cache_desc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct g_cache_desc*,int ) ;
 int d_next ;
 int d_used ;
 int g_cache_free (struct g_cache_softc*,struct g_cache_desc*) ;
 int g_cache_used_lo ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
g_cache_free_used(struct g_cache_softc *sc)
{
 struct g_cache_desc *dp;
 u_int n;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 n = g_cache_used_lo * sc->sc_maxent / 100;
 while (sc->sc_nused > n) {
  KASSERT(!TAILQ_EMPTY(&sc->sc_usedlist), ("used list empty"));
  dp = TAILQ_FIRST(&sc->sc_usedlist);
  TAILQ_REMOVE(&sc->sc_usedlist, dp, d_used);
  sc->sc_nused--;
  LIST_REMOVE(dp, d_next);
  g_cache_free(sc, dp);
 }
}
