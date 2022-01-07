
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_cache_softc {int sc_mtx; int sc_invalid; int sc_nused; int sc_usedlist; } ;
struct g_cache_desc {int d_flags; int * d_biolist; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; } ;
typedef scalar_t__ off_t ;


 int D_FLAG_INVALID ;
 int D_FLAG_USED ;
 int LIST_REMOVE (struct g_cache_desc*,int ) ;
 scalar_t__ OFF2BNO (scalar_t__,struct g_cache_softc*) ;
 int TAILQ_REMOVE (int *,struct g_cache_desc*,int ) ;
 int d_next ;
 int d_used ;
 int g_cache_free (struct g_cache_softc*,struct g_cache_desc*) ;
 struct g_cache_desc* g_cache_lookup (struct g_cache_softc*,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_cache_invalidate(struct g_cache_softc *sc, struct bio *bp)
{
 struct g_cache_desc *dp;
 off_t bno, lim;

 mtx_lock(&sc->sc_mtx);
 bno = OFF2BNO(bp->bio_offset, sc);
 lim = OFF2BNO(bp->bio_offset + bp->bio_length - 1, sc);
 do {
  if ((dp = g_cache_lookup(sc, bno)) != ((void*)0)) {
   LIST_REMOVE(dp, d_next);
   if (dp->d_flags & D_FLAG_USED) {
    TAILQ_REMOVE(&sc->sc_usedlist, dp, d_used);
    sc->sc_nused--;
   }
   if (dp->d_biolist == ((void*)0))
    g_cache_free(sc, dp);
   else {
    dp->d_flags = D_FLAG_INVALID;
    sc->sc_invalid++;
   }
  }
  bno++;
 } while (bno <= lim);
 mtx_unlock(&sc->sc_mtx);
}
