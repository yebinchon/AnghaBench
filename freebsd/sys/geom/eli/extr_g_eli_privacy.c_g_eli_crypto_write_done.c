
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_geom {int consumer; struct g_eli_softc* softc; } ;
struct g_eli_softc {int sc_inflight; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct cryptop {scalar_t__ crp_etype; TYPE_1__* crp_desc; scalar_t__ crp_opaque; } ;
struct bio {int bio_inbed; int bio_children; scalar_t__ bio_error; TYPE_2__* bio_to; int bio_done; int * bio_driver2; int * bio_data; struct bio* bio_driver1; } ;
struct TYPE_4__ {struct g_geom* geom; } ;
struct TYPE_3__ {int crd_key; } ;


 scalar_t__ EAGAIN ;
 int G_ELI_DEBUG (int,char*,int,int,...) ;
 int G_ELI_LOGREQ (int,struct bio*,char*,...) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int M_ELI ;
 int atomic_subtract_int (int *,int) ;
 int free (int *,int ) ;
 int g_destroy_bio (struct bio*) ;
 scalar_t__ g_eli_crypto_rerun (struct cryptop*) ;
 int g_eli_key_drop (struct g_eli_softc*,int ) ;
 int g_eli_write_done ;
 int g_io_deliver (struct bio*,scalar_t__) ;
 int g_io_request (struct bio*,struct g_consumer*) ;

__attribute__((used)) static int
g_eli_crypto_write_done(struct cryptop *crp)
{
 struct g_eli_softc *sc;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct bio *bp, *cbp;

 if (crp->crp_etype == EAGAIN) {
  if (g_eli_crypto_rerun(crp) == 0)
   return (0);
 }
 bp = (struct bio *)crp->crp_opaque;
 bp->bio_inbed++;
 if (crp->crp_etype == 0) {
  G_ELI_DEBUG(3, "Crypto WRITE request done (%d/%d).",
      bp->bio_inbed, bp->bio_children);
 } else {
  G_ELI_DEBUG(1, "Crypto WRITE request failed (%d/%d) error=%d.",
      bp->bio_inbed, bp->bio_children, crp->crp_etype);
  if (bp->bio_error == 0)
   bp->bio_error = crp->crp_etype;
 }
 gp = bp->bio_to->geom;
 sc = gp->softc;
 g_eli_key_drop(sc, crp->crp_desc->crd_key);



 if (bp->bio_inbed < bp->bio_children)
  return (0);
 bp->bio_inbed = 0;
 bp->bio_children = 1;
 cbp = bp->bio_driver1;
 bp->bio_driver1 = ((void*)0);
 if (bp->bio_error != 0) {
  G_ELI_LOGREQ(0, bp, "Crypto WRITE request failed (error=%d).",
      bp->bio_error);
  free(bp->bio_driver2, M_ELI);
  bp->bio_driver2 = ((void*)0);
  g_destroy_bio(cbp);
  g_io_deliver(bp, bp->bio_error);
  atomic_subtract_int(&sc->sc_inflight, 1);
  return (0);
 }
 cbp->bio_data = bp->bio_driver2;
 cbp->bio_done = g_eli_write_done;
 cp = LIST_FIRST(&gp->consumer);
 cbp->bio_to = cp->provider;
 G_ELI_LOGREQ(2, cbp, "Sending request.");



 g_io_request(cbp, cp);
 return (0);
}
