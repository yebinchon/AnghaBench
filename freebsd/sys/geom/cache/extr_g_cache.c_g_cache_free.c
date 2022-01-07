
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_cache_softc {int sc_nent; int sc_zone; int sc_mtx; } ;
struct g_cache_desc {int d_data; } ;


 int MA_OWNED ;
 int M_GCACHE ;
 int free (struct g_cache_desc*,int ) ;
 int mtx_assert (int *,int ) ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
g_cache_free(struct g_cache_softc *sc, struct g_cache_desc *dp)
{

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 uma_zfree(sc->sc_zone, dp->d_data);
 free(dp, M_GCACHE);
 sc->sc_nent--;
}
