
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_cache_softc {scalar_t__ sc_bsize; int sc_nused; int sc_usedlist; int sc_mtx; } ;
struct g_cache_desc {scalar_t__ d_bno; scalar_t__ d_data; int d_flags; int d_atime; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int bio_error; scalar_t__ bio_data; scalar_t__ bio_completed; } ;
typedef scalar_t__ off_t ;


 scalar_t__ BNO2OFF (scalar_t__,struct g_cache_softc*) ;
 int D_FLAG_USED ;
 int KASSERT (int,char*) ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int MA_OWNED ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ OFF2BNO (scalar_t__,struct g_cache_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct g_cache_desc*,int ) ;
 int TAILQ_REMOVE (int *,struct g_cache_desc*,int ) ;
 int bcopy (scalar_t__,scalar_t__,scalar_t__) ;
 int d_used ;
 int g_io_deliver (struct bio*,int) ;
 int mtx_assert (int *,int ) ;
 int time_uptime ;

__attribute__((used)) static void
g_cache_deliver(struct g_cache_softc *sc, struct bio *bp,
    struct g_cache_desc *dp, int error)
{
 off_t off1, off, len;

 mtx_assert(&sc->sc_mtx, MA_OWNED);
 KASSERT(OFF2BNO(bp->bio_offset, sc) <= dp->d_bno, ("wrong entry"));
 KASSERT(OFF2BNO(bp->bio_offset + bp->bio_length - 1, sc) >=
     dp->d_bno, ("wrong entry"));

 off1 = BNO2OFF(dp->d_bno, sc);
 off = MAX(bp->bio_offset, off1);
 len = MIN(bp->bio_offset + bp->bio_length, off1 + sc->sc_bsize) - off;

 if (bp->bio_error == 0)
  bp->bio_error = error;
 if (bp->bio_error == 0) {
  bcopy(dp->d_data + (off - off1),
      bp->bio_data + (off - bp->bio_offset), len);
 }
 bp->bio_completed += len;
 KASSERT(bp->bio_completed <= bp->bio_length, ("extra data"));
 if (bp->bio_completed == bp->bio_length) {
  if (bp->bio_error != 0)
   bp->bio_completed = 0;
  g_io_deliver(bp, bp->bio_error);
 }

 if (dp->d_flags & D_FLAG_USED) {
  TAILQ_REMOVE(&sc->sc_usedlist, dp, d_used);
  TAILQ_INSERT_TAIL(&sc->sc_usedlist, dp, d_used);
 } else if (OFF2BNO(off + len, sc) > dp->d_bno) {
  TAILQ_INSERT_TAIL(&sc->sc_usedlist, dp, d_used);
  sc->sc_nused++;
  dp->d_flags |= D_FLAG_USED;
 }
 dp->d_atime = time_uptime;
}
