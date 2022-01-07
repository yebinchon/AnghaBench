
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_queue_head {int dummy; } ;
struct vtblk_softc {int * vtblk_vq; struct bio_queue_head vtblk_bioq; } ;
struct vtblk_request {struct bio* vbr_bp; } ;
struct bio_queue {int dummy; } ;
struct bio {int dummy; } ;


 int ENXIO ;
 int TAILQ_INIT (struct bio_queue*) ;
 int * bioq_first (struct bio_queue_head*) ;
 struct bio* bioq_takefirst (struct bio_queue_head*) ;
 int vtblk_bio_done (struct vtblk_softc*,struct bio*,int ) ;
 int vtblk_done_completed (struct vtblk_softc*,struct bio_queue*) ;
 int vtblk_drain_vq (struct vtblk_softc*) ;
 int vtblk_queue_completed (struct vtblk_softc*,struct bio_queue*) ;
 int vtblk_request_enqueue (struct vtblk_softc*,struct vtblk_request*) ;
 int vtblk_request_free (struct vtblk_softc*) ;
 struct vtblk_request* vtblk_request_next_ready (struct vtblk_softc*) ;

__attribute__((used)) static void
vtblk_drain(struct vtblk_softc *sc)
{
 struct bio_queue queue;
 struct bio_queue_head *bioq;
 struct vtblk_request *req;
 struct bio *bp;

 bioq = &sc->vtblk_bioq;
 TAILQ_INIT(&queue);

 if (sc->vtblk_vq != ((void*)0)) {
  vtblk_queue_completed(sc, &queue);
  vtblk_done_completed(sc, &queue);

  vtblk_drain_vq(sc);
 }

 while ((req = vtblk_request_next_ready(sc)) != ((void*)0)) {
  vtblk_bio_done(sc, req->vbr_bp, ENXIO);
  vtblk_request_enqueue(sc, req);
 }

 while (bioq_first(bioq) != ((void*)0)) {
  bp = bioq_takefirst(bioq);
  vtblk_bio_done(sc, bp, ENXIO);
 }

 vtblk_request_free(sc);
}
