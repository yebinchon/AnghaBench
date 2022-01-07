
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {int consumer; struct g_cache_softc* softc; } ;
struct g_cache_softc {scalar_t__ sc_wrotebytes; int sc_writes; scalar_t__ sc_cachereadbytes; int sc_cachereads; int sc_mtx; scalar_t__ sc_tail; scalar_t__ sc_readbytes; int sc_reads; } ;
struct g_cache_desc {int * d_biolist; } ;
struct bio {int bio_cmd; int bio_done; scalar_t__ bio_length; scalar_t__ bio_offset; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;




 int ENOMEM ;
 int G_CACHE_LOGREQ (struct bio*,char*) ;
 int LIST_FIRST (int *) ;
 int OFF2BNO (scalar_t__,struct g_cache_softc*) ;
 int g_cache_deliver (struct g_cache_softc*,struct bio*,struct g_cache_desc*,int ) ;
 int g_cache_enable ;
 int g_cache_invalidate (struct g_cache_softc*,struct bio*) ;
 struct g_cache_desc* g_cache_lookup (struct g_cache_softc*,int ) ;
 int g_cache_read (struct g_cache_softc*,struct bio*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,int ) ;
 int g_std_done ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_cache_start(struct bio *bp)
{
 struct g_cache_softc *sc;
 struct g_geom *gp;
 struct g_cache_desc *dp;
 struct bio *cbp;

 gp = bp->bio_to->geom;
 sc = gp->softc;
 G_CACHE_LOGREQ(bp, "Request received.");
 switch (bp->bio_cmd) {
 case 129:
  sc->sc_reads++;
  sc->sc_readbytes += bp->bio_length;
  if (!g_cache_enable)
   break;
  if (bp->bio_offset + bp->bio_length > sc->sc_tail)
   break;
  if (OFF2BNO(bp->bio_offset, sc) ==
      OFF2BNO(bp->bio_offset + bp->bio_length - 1, sc)) {
   sc->sc_cachereads++;
   sc->sc_cachereadbytes += bp->bio_length;
   if (g_cache_read(sc, bp) == 0)
    return;
   sc->sc_cachereads--;
   sc->sc_cachereadbytes -= bp->bio_length;
   break;
  } else if (OFF2BNO(bp->bio_offset, sc) + 1 ==
      OFF2BNO(bp->bio_offset + bp->bio_length - 1, sc)) {
   mtx_lock(&sc->sc_mtx);
   dp = g_cache_lookup(sc, OFF2BNO(bp->bio_offset, sc));
   if (dp == ((void*)0) || dp->d_biolist != ((void*)0)) {
    mtx_unlock(&sc->sc_mtx);
    break;
   }
   sc->sc_cachereads++;
   sc->sc_cachereadbytes += bp->bio_length;
   g_cache_deliver(sc, bp, dp, 0);
   mtx_unlock(&sc->sc_mtx);
   if (g_cache_read(sc, bp) == 0)
    return;
   sc->sc_cachereads--;
   sc->sc_cachereadbytes -= bp->bio_length;
   break;
  }
  break;
 case 128:
  sc->sc_writes++;
  sc->sc_wrotebytes += bp->bio_length;
  g_cache_invalidate(sc, bp);
  break;
 }
 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 cbp->bio_done = g_std_done;
 G_CACHE_LOGREQ(cbp, "Sending request.");
 g_io_request(cbp, LIST_FIRST(&gp->consumer));
}
