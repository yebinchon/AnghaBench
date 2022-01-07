
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int dummy; } ;
struct bio {int bio_error; int bio_flags; int bio_bcount; int bio_resid; } ;


 int BIO_ERROR ;
 int VTBLK_LOCK_ASSERT_NOTOWNED (struct vtblk_softc*) ;
 int biodone (struct bio*) ;

__attribute__((used)) static void
vtblk_bio_done(struct vtblk_softc *sc, struct bio *bp, int error)
{


 if (sc != ((void*)0))
  VTBLK_LOCK_ASSERT_NOTOWNED(sc);

 if (error) {
  bp->bio_resid = bp->bio_bcount;
  bp->bio_error = error;
  bp->bio_flags |= BIO_ERROR;
 }

 biodone(bp);
}
