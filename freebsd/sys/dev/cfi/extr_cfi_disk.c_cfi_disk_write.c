
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct cfi_softc {int sc_width; scalar_t__ sc_size; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; scalar_t__ sc_wrbuf; scalar_t__ sc_writing; } ;
struct bio {scalar_t__ bio_offset; long bio_bcount; long bio_resid; int bio_data; int bio_flags; scalar_t__ bio_error; } ;


 int BIO_ERROR ;
 scalar_t__ EIO ;
 int KASSERT (int,char*) ;
 scalar_t__ MIN (scalar_t__,long) ;
 int bcopy (int ,scalar_t__,scalar_t__) ;
 int biodone (struct bio*) ;
 int cfi_block_finish (struct cfi_softc*) ;
 scalar_t__ cfi_block_start (struct cfi_softc*,scalar_t__) ;

__attribute__((used)) static void
cfi_disk_write(struct cfi_softc *sc, struct bio *bp)
{
 long resid;
 u_int top;

 KASSERT(sc->sc_width == 1 || sc->sc_width == 2 || sc->sc_width == 4,
     ("sc_width %d", sc->sc_width));

 if (bp->bio_offset > sc->sc_size) {
  bp->bio_flags |= BIO_ERROR;
  bp->bio_error = EIO;
  goto done;
 }
 resid = bp->bio_bcount;
 while (resid > 0) {




  if (sc->sc_writing) {
   top = sc->sc_wrofs + sc->sc_wrbufsz;
   if (bp->bio_offset < sc->sc_wrofs ||
       bp->bio_offset >= top)
    cfi_block_finish(sc);
  }


  if (!sc->sc_writing) {
   bp->bio_error = cfi_block_start(sc, bp->bio_offset);
   if (bp->bio_error) {
    bp->bio_flags |= BIO_ERROR;
    goto done;
   }
  }

  top = sc->sc_wrofs + sc->sc_wrbufsz;
  bcopy(bp->bio_data,
      sc->sc_wrbuf + bp->bio_offset - sc->sc_wrofs,
      MIN(top - bp->bio_offset, resid));
  resid -= MIN(top - bp->bio_offset, resid);
 }
 bp->bio_resid = resid;
done:
 biodone(bp);
}
