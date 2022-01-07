
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_stripe_softc {size_t sc_ndisks; struct g_consumer** sc_disks; } ;
struct g_consumer {int provider; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_consumer* bio_caller2; int bio_to; int bio_done; } ;


 scalar_t__ ENOMEM ;
 int G_STRIPE_LOGREQ (struct bio*,char*) ;
 struct bio* bioq_first (struct bio_queue_head*) ;
 int bioq_init (struct bio_queue_head*) ;
 int bioq_insert_tail (struct bio_queue_head*,struct bio*) ;
 int bioq_remove (struct bio_queue_head*,struct bio*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,scalar_t__) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_stripe_done ;

__attribute__((used)) static void
g_stripe_flush(struct g_stripe_softc *sc, struct bio *bp)
{
 struct bio_queue_head queue;
 struct g_consumer *cp;
 struct bio *cbp;
 u_int no;

 bioq_init(&queue);
 for (no = 0; no < sc->sc_ndisks; no++) {
  cbp = g_clone_bio(bp);
  if (cbp == ((void*)0)) {
   for (cbp = bioq_first(&queue); cbp != ((void*)0);
       cbp = bioq_first(&queue)) {
    bioq_remove(&queue, cbp);
    g_destroy_bio(cbp);
   }
   if (bp->bio_error == 0)
    bp->bio_error = ENOMEM;
   g_io_deliver(bp, bp->bio_error);
   return;
  }
  bioq_insert_tail(&queue, cbp);
  cbp->bio_done = g_stripe_done;
  cbp->bio_caller2 = sc->sc_disks[no];
  cbp->bio_to = sc->sc_disks[no]->provider;
 }
 for (cbp = bioq_first(&queue); cbp != ((void*)0); cbp = bioq_first(&queue)) {
  bioq_remove(&queue, cbp);
  G_STRIPE_LOGREQ(cbp, "Sending request.");
  cp = cbp->bio_caller2;
  cbp->bio_caller2 = ((void*)0);
  g_io_request(cbp, cp);
 }
}
