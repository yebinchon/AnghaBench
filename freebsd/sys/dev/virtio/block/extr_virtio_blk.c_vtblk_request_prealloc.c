
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; int vtblk_request_count; int vtblk_vq; } ;
struct vtblk_request {int vbr_ack; int vbr_hdr; } ;


 int ENOMEM ;
 int MPASS (int) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int VTBLK_FLAG_INDIRECT ;
 int VTBLK_MIN_SEGMENTS ;
 struct vtblk_request* malloc (int,int ,int ) ;
 int sglist_count (int *,int) ;
 int virtqueue_size (int ) ;
 int vtblk_request_enqueue (struct vtblk_softc*,struct vtblk_request*) ;

__attribute__((used)) static int
vtblk_request_prealloc(struct vtblk_softc *sc)
{
 struct vtblk_request *req;
 int i, nreqs;

 nreqs = virtqueue_size(sc->vtblk_vq);






 if ((sc->vtblk_flags & VTBLK_FLAG_INDIRECT) == 0)
  nreqs /= VTBLK_MIN_SEGMENTS;

 for (i = 0; i < nreqs; i++) {
  req = malloc(sizeof(struct vtblk_request), M_DEVBUF, M_NOWAIT);
  if (req == ((void*)0))
   return (ENOMEM);

  MPASS(sglist_count(&req->vbr_hdr, sizeof(req->vbr_hdr)) == 1);
  MPASS(sglist_count(&req->vbr_ack, sizeof(req->vbr_ack)) == 1);

  sc->vtblk_request_count++;
  vtblk_request_enqueue(sc, req);
 }

 return (0);
}
