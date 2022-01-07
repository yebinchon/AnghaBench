
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct g_stripe_softc {int sc_stripesize; int sc_stripebits; int sc_ndisks; } ;
struct bio {int bio_cmd; int bio_offset; int bio_length; int bio_flags; int bio_error; TYPE_2__* bio_to; } ;
typedef int off_t ;
struct TYPE_4__ {int name; int error; TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_stripe_softc* softc; } ;






 int BIO_UNMAPPED ;

 int EOPNOTSUPP ;
 int G_STRIPE_LOGREQ (struct bio*,char*) ;
 int KASSERT (int ,char*) ;
 int MAXPHYS ;
 int MIN (int,int) ;
 int g_io_deliver (struct bio*,int) ;
 scalar_t__ g_stripe_fast ;
 int g_stripe_fast_failed ;
 int g_stripe_flush (struct g_stripe_softc*,struct bio*) ;
 int g_stripe_start_economic (struct bio*,int,int,int) ;
 int g_stripe_start_fast (struct bio*,int,int,int) ;

__attribute__((used)) static void
g_stripe_start(struct bio *bp)
{
 off_t offset, start, length, nstripe, stripesize;
 struct g_stripe_softc *sc;
 u_int no;
 int error, fast = 0;

 sc = bp->bio_to->geom->softc;




 KASSERT(sc != ((void*)0),
     ("Provider's error should be set (error=%d)(device=%s).",
     bp->bio_to->error, bp->bio_to->name));

 G_STRIPE_LOGREQ(bp, "Request received.");

 switch (bp->bio_cmd) {
 case 129:
 case 128:
 case 132:
  break;
 case 131:
  g_stripe_flush(sc, bp);
  return;
 case 130:

 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }

 stripesize = sc->sc_stripesize;







 nstripe = bp->bio_offset >> (off_t)sc->sc_stripebits;

 no = nstripe % sc->sc_ndisks;


 start = bp->bio_offset & (stripesize - 1);


 offset = ((nstripe / sc->sc_ndisks) << sc->sc_stripebits) + start;

 length = MIN(bp->bio_length, stripesize - start);
 if (g_stripe_fast && bp->bio_length <= MAXPHYS &&
     bp->bio_length >= stripesize * sc->sc_ndisks &&
     (bp->bio_flags & BIO_UNMAPPED) == 0 &&
     bp->bio_cmd != 132) {
  fast = 1;
 }
 error = 0;
 if (fast) {
  error = g_stripe_start_fast(bp, no, offset, length);
  if (error != 0)
   g_stripe_fast_failed++;
 }






 if (!fast || error != 0)
  error = g_stripe_start_economic(bp, no, offset, length);
 if (error != 0) {
  if (bp->bio_error == 0)
   bp->bio_error = error;
  g_io_deliver(bp, bp->bio_error);
 }
}
