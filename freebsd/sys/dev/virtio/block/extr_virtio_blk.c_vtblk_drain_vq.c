
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int * vtblk_req_ordered; struct virtqueue* vtblk_vq; } ;
struct vtblk_request {int vbr_bp; } ;
struct virtqueue {int dummy; } ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct vtblk_request* virtqueue_drain (struct virtqueue*,int*) ;
 int virtqueue_empty (struct virtqueue*) ;
 int vtblk_bio_done (struct vtblk_softc*,int ,int ) ;
 int vtblk_request_enqueue (struct vtblk_softc*,struct vtblk_request*) ;

__attribute__((used)) static void
vtblk_drain_vq(struct vtblk_softc *sc)
{
 struct virtqueue *vq;
 struct vtblk_request *req;
 int last;

 vq = sc->vtblk_vq;
 last = 0;

 while ((req = virtqueue_drain(vq, &last)) != ((void*)0)) {
  vtblk_bio_done(sc, req->vbr_bp, ENXIO);
  vtblk_request_enqueue(sc, req);
 }

 sc->vtblk_req_ordered = ((void*)0);
 KASSERT(virtqueue_empty(vq), ("virtqueue not empty"));
}
