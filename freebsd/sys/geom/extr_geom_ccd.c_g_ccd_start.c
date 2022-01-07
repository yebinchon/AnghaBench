
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccd_s {scalar_t__ sc_secsize; int sc_flags; int sc_pick; int sc_size; scalar_t__* sc_blk; } ;
struct bio {scalar_t__ bio_cmd; scalar_t__ bio_offset; long bio_data; long bio_length; long bio_completed; int bio_error; int bio_from; TYPE_2__* bio_to; } ;
typedef scalar_t__ daddr_t ;
typedef long caddr_t ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct ccd_s* softc; } ;


 scalar_t__ BIO_GETATTR ;
 scalar_t__ BIO_READ ;
 int CCDF_MIRROR ;
 int EINVAL ;
 scalar_t__ btodb (long) ;
 int ccdbuffer (struct bio**,struct ccd_s*,struct bio*,scalar_t__,long,long) ;
 int g_io_deliver (struct bio*,int) ;
 int g_io_request (struct bio*,int ) ;

__attribute__((used)) static void
g_ccd_start(struct bio *bp)
{
 long bcount, rcount;
 struct bio *cbp[2];
 caddr_t addr;
 daddr_t bn;
 int err;
 struct ccd_s *cs;

 cs = bp->bio_to->geom->softc;






 if(bp->bio_cmd == BIO_GETATTR) {
  g_io_deliver(bp, EINVAL);
  return;
 }




 bn = bp->bio_offset / cs->sc_secsize;




 addr = bp->bio_data;
 for (bcount = bp->bio_length; bcount > 0; bcount -= rcount) {
  err = ccdbuffer(cbp, cs, bp, bn, addr, bcount);
  if (err) {
   bp->bio_completed += bcount;
   if (bp->bio_error == 0)
    bp->bio_error = err;
   if (bp->bio_completed == bp->bio_length)
    g_io_deliver(bp, bp->bio_error);
   return;
  }
  rcount = cbp[0]->bio_length;

  if (cs->sc_flags & CCDF_MIRROR) {
   if (cbp[0]->bio_cmd != BIO_READ) {
    g_io_request(cbp[0], cbp[0]->bio_from);
    g_io_request(cbp[1], cbp[1]->bio_from);
   } else {
    int pick = cs->sc_pick;
    daddr_t range = cs->sc_size / 16;

    if (bn < cs->sc_blk[pick] - range ||
        bn > cs->sc_blk[pick] + range
    ) {
     cs->sc_pick = pick = 1 - pick;
    }
    cs->sc_blk[pick] = bn + btodb(rcount);
    g_io_request(cbp[pick], cbp[pick]->bio_from);
   }
  } else {



   g_io_request(cbp[0], cbp[0]->bio_from);
  }
  bn += btodb(rcount);
  addr += rcount;
 }
}
