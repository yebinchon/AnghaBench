
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct g_eli_softc {int sc_data_per_sector; int sc_bytes_per_sector; int sc_alen; scalar_t__ sc_name; int sc_inflight; TYPE_6__* sc_geom; } ;
struct cryptop {scalar_t__ crp_etype; TYPE_3__* crp_desc; scalar_t__ crp_olen; scalar_t__ crp_opaque; } ;
struct bio {scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_error; int bio_length; int bio_offset; scalar_t__ bio_completed; int * bio_driver2; int * bio_data; TYPE_4__* bio_to; } ;
typedef int off_t ;
typedef scalar_t__ intmax_t ;
struct TYPE_14__ {TYPE_5__* provider; } ;
struct TYPE_13__ {int consumer; } ;
struct TYPE_12__ {int sectorsize; } ;
struct TYPE_11__ {int sectorsize; TYPE_1__* geom; } ;
struct TYPE_10__ {TYPE_2__* crd_next; } ;
struct TYPE_9__ {int crd_key; } ;
struct TYPE_8__ {struct g_eli_softc* softc; } ;


 scalar_t__ EAGAIN ;
 int EINVAL ;
 int G_ELI_DEBUG (int,char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 int G_ELI_LOGREQ (int ,struct bio*,char*,int) ;
 TYPE_7__* LIST_FIRST (int *) ;
 int M_ELI ;
 int atomic_subtract_int (int *,int) ;
 scalar_t__ bcmp (int *,int *,int) ;
 int bcopy (int *,int *,int) ;
 int free (int *,int ) ;
 scalar_t__ g_eli_crypto_rerun (struct cryptop*) ;
 int g_eli_key_drop (struct g_eli_softc*,int ) ;
 int g_io_deliver (struct bio*,int) ;

__attribute__((used)) static int
g_eli_auth_read_done(struct cryptop *crp)
{
 struct g_eli_softc *sc;
 struct bio *bp;

 if (crp->crp_etype == EAGAIN) {
  if (g_eli_crypto_rerun(crp) == 0)
   return (0);
 }
 bp = (struct bio *)crp->crp_opaque;
 bp->bio_inbed++;
 if (crp->crp_etype == 0) {
  bp->bio_completed += crp->crp_olen;
  G_ELI_DEBUG(3, "Crypto READ request done (%d/%d) (add=%jd completed=%jd).",
      bp->bio_inbed, bp->bio_children, (intmax_t)crp->crp_olen, (intmax_t)bp->bio_completed);
 } else {
  G_ELI_DEBUG(1, "Crypto READ request failed (%d/%d) error=%d.",
      bp->bio_inbed, bp->bio_children, crp->crp_etype);
  if (bp->bio_error == 0)
   bp->bio_error = crp->crp_etype;
 }
 sc = bp->bio_to->geom->softc;
 g_eli_key_drop(sc, crp->crp_desc->crd_next->crd_key);



 if (bp->bio_inbed < bp->bio_children)
  return (0);
 if (bp->bio_error == 0) {
  u_int i, lsec, nsec, data_secsize, decr_secsize, encr_secsize;
  u_char *srcdata, *dstdata, *auth;
  off_t coroff, corsize;





  decr_secsize = bp->bio_to->sectorsize;

  encr_secsize = LIST_FIRST(&sc->sc_geom->consumer)->provider->sectorsize;

  data_secsize = sc->sc_data_per_sector;

  nsec = bp->bio_length / decr_secsize;

  nsec = (nsec * sc->sc_bytes_per_sector) / encr_secsize;

  lsec = sc->sc_bytes_per_sector / encr_secsize;

  srcdata = bp->bio_driver2;
  dstdata = bp->bio_data;
  auth = srcdata + encr_secsize * nsec;
  coroff = -1;
  corsize = 0;

  for (i = 1; i <= nsec; i++) {
   data_secsize = sc->sc_data_per_sector;
   if ((i % lsec) == 0)
    data_secsize = decr_secsize % data_secsize;
   if (bcmp(srcdata, auth, sc->sc_alen) != 0) {





    if (bp->bio_error == 0)
     bp->bio_error = -1;
    if (coroff == -1) {
     coroff = bp->bio_offset +
         (dstdata - (u_char *)bp->bio_data);
    }
    corsize += data_secsize;
   } else {




    if (coroff != -1) {
     G_ELI_DEBUG(0, "%s: Failed to authenticate %jd "
         "bytes of data at offset %jd.",
         sc->sc_name, (intmax_t)corsize,
         (intmax_t)coroff);
     coroff = -1;
     corsize = 0;
    }
    bcopy(srcdata + sc->sc_alen, dstdata,
        data_secsize);
   }
   srcdata += encr_secsize;
   dstdata += data_secsize;
   auth += sc->sc_alen;
  }

  if (coroff != -1) {
   G_ELI_DEBUG(0, "%s: Failed to authenticate %jd "
       "bytes of data at offset %jd.",
       sc->sc_name, (intmax_t)corsize, (intmax_t)coroff);
  }
 }
 free(bp->bio_driver2, M_ELI);
 bp->bio_driver2 = ((void*)0);
 if (bp->bio_error != 0) {
  if (bp->bio_error == -1)
   bp->bio_error = EINVAL;
  else {
   G_ELI_LOGREQ(0, bp,
       "Crypto READ request failed (error=%d).",
       bp->bio_error);
  }
  bp->bio_completed = 0;
 }



 g_io_deliver(bp, bp->bio_error);
 atomic_subtract_int(&sc->sc_inflight, 1);
 return (0);
}
