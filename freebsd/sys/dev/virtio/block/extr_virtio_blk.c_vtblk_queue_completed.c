
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {struct vtblk_request* vtblk_req_ordered; int vtblk_vq; } ;
struct vtblk_request {struct bio* vbr_bp; } ;
struct bio_queue {int dummy; } ;
struct bio {int bio_error; } ;


 int MPASS (int) ;
 int TAILQ_INSERT_TAIL (struct bio_queue*,struct bio*,int ) ;
 int bio_queue ;
 struct vtblk_request* virtqueue_dequeue (int ,int *) ;
 int vtblk_request_enqueue (struct vtblk_softc*,struct vtblk_request*) ;
 int vtblk_request_error (struct vtblk_request*) ;

__attribute__((used)) static void
vtblk_queue_completed(struct vtblk_softc *sc, struct bio_queue *queue)
{
 struct vtblk_request *req;
 struct bio *bp;

 while ((req = virtqueue_dequeue(sc->vtblk_vq, ((void*)0))) != ((void*)0)) {
  if (sc->vtblk_req_ordered != ((void*)0)) {
   MPASS(sc->vtblk_req_ordered == req);
   sc->vtblk_req_ordered = ((void*)0);
  }

  bp = req->vbr_bp;
  bp->bio_error = vtblk_request_error(req);
  TAILQ_INSERT_TAIL(queue, bp, bio_queue);

  vtblk_request_enqueue(sc, req);
 }
}
