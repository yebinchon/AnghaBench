
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdiinfo {int ii_ndisk; scalar_t__ ii_startblk; int* ii_index; int ii_startoff; } ;
struct ccdcinfo {scalar_t__ ci_size; int ci_consumer; } ;
struct ccd_s {scalar_t__ sc_ileave; int sc_flags; long sc_offset; struct ccdcinfo* sc_cinfo; struct ccdiinfo* sc_itable; } ;
struct bio {long bio_length; struct bio* bio_caller1; int bio_from; int bio_data; void* bio_offset; int bio_done; } ;
typedef long off_t ;
typedef scalar_t__ daddr_t ;
typedef int caddr_t ;


 int CCDF_MIRROR ;
 int ENOMEM ;
 int ccdiodone ;
 void* dbtob (long) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_std_done ;

__attribute__((used)) static int
ccdbuffer(struct bio **cb, struct ccd_s *cs, struct bio *bp, daddr_t bn, caddr_t addr, long bcount)
{
 struct ccdcinfo *ci, *ci2 = ((void*)0);
 struct bio *cbp;
 daddr_t cbn, cboff;
 off_t cbc;




 cbn = bn;
 cboff = 0;

 if (cs->sc_ileave == 0) {




  daddr_t sblk;

  sblk = 0;
  for (ci = cs->sc_cinfo; cbn >= sblk + ci->ci_size; ci++)
   sblk += ci->ci_size;
  cbn -= sblk;
 } else {
  struct ccdiinfo *ii;
  int ccdisk, off;






  cboff = cbn % cs->sc_ileave;
  cbn = cbn / cs->sc_ileave;




  for (ii = cs->sc_itable; ii->ii_ndisk; ii++) {
   if (ii->ii_startblk > cbn)
    break;
  }
  ii--;





  off = cbn - ii->ii_startblk;
  if (ii->ii_ndisk == 1) {




   ccdisk = ii->ii_index[0];
   cbn = ii->ii_startoff + off;
  } else {
   if (cs->sc_flags & CCDF_MIRROR) {
    int ndisk2 = ii->ii_ndisk / 2;
    ccdisk = ii->ii_index[off % ndisk2];
    cbn = ii->ii_startoff + off / ndisk2;
    ci2 = &cs->sc_cinfo[ccdisk + ndisk2];
   } else {
    ccdisk = ii->ii_index[off % ii->ii_ndisk];
    cbn = ii->ii_startoff + off / ii->ii_ndisk;
   }
  }

  ci = &cs->sc_cinfo[ccdisk];






  cbn *= cs->sc_ileave;
 }




 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0))
  return (ENOMEM);
 cbp->bio_done = g_std_done;
 cbp->bio_offset = dbtob(cbn + cboff + cs->sc_offset);
 cbp->bio_data = addr;
 if (cs->sc_ileave == 0)
              cbc = dbtob((off_t)(ci->ci_size - cbn));
 else
              cbc = dbtob((off_t)(cs->sc_ileave - cboff));
 cbp->bio_length = (cbc < bcount) ? cbc : bcount;

 cbp->bio_from = ci->ci_consumer;
 cb[0] = cbp;

 if (cs->sc_flags & CCDF_MIRROR) {
  cbp = g_clone_bio(bp);
  if (cbp == ((void*)0))
   return (ENOMEM);
  cbp->bio_done = cb[0]->bio_done = ccdiodone;
  cbp->bio_offset = cb[0]->bio_offset;
  cbp->bio_data = cb[0]->bio_data;
  cbp->bio_length = cb[0]->bio_length;
  cbp->bio_from = ci2->ci_consumer;
  cbp->bio_caller1 = cb[0];
  cb[0]->bio_caller1 = cbp;
  cb[1] = cbp;
 }
 return (0);
}
