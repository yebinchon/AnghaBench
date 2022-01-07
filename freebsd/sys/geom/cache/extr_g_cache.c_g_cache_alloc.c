
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_cache_softc {scalar_t__ sc_nent; scalar_t__ sc_maxent; int sc_zone; int sc_cachefull; int sc_nused; int sc_usedlist; int sc_mtx; } ;
struct g_cache_desc {int * d_data; scalar_t__ d_flags; } ;


 int LIST_REMOVE (struct g_cache_desc*,int ) ;
 int MA_OWNED ;
 int M_GCACHE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_EMPTY (int *) ;
 struct g_cache_desc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct g_cache_desc*,int ) ;
 int d_next ;
 int d_used ;
 int free (struct g_cache_desc*,int ) ;
 struct g_cache_desc* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int * uma_zalloc (int ,int) ;

__attribute__((used)) static struct g_cache_desc *
g_cache_alloc(struct g_cache_softc *sc)
{
 struct g_cache_desc *dp;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 if (!TAILQ_EMPTY(&sc->sc_usedlist)) {
  dp = TAILQ_FIRST(&sc->sc_usedlist);
  TAILQ_REMOVE(&sc->sc_usedlist, dp, d_used);
  sc->sc_nused--;
  dp->d_flags = 0;
  LIST_REMOVE(dp, d_next);
  return (dp);
 }
 if (sc->sc_nent > sc->sc_maxent) {
  sc->sc_cachefull++;
  return (((void*)0));
 }
 dp = malloc(sizeof(*dp), M_GCACHE, M_NOWAIT | M_ZERO);
 if (dp == ((void*)0))
  return (((void*)0));
 dp->d_data = uma_zalloc(sc->sc_zone, M_NOWAIT);
 if (dp->d_data == ((void*)0)) {
  free(dp, M_GCACHE);
  return (((void*)0));
 }
 sc->sc_nent++;
 return (dp);
}
