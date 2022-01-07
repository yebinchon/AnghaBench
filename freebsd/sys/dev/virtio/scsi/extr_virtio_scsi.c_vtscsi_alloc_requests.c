
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_flags; int vtscsi_nrequests; int vtscsi_request_vq; } ;
struct vtscsi_request {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int VTSCSI_FLAG_INDIRECT ;
 int VTSCSI_MIN_SEGMENTS ;
 scalar_t__ VTSCSI_RESERVED_REQUESTS ;
 struct vtscsi_request* malloc (int,int ,int ) ;
 int virtqueue_size (int ) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_init_request (struct vtscsi_softc*,struct vtscsi_request*) ;

__attribute__((used)) static int
vtscsi_alloc_requests(struct vtscsi_softc *sc)
{
 struct vtscsi_request *req;
 int i, nreqs;







 nreqs = virtqueue_size(sc->vtscsi_request_vq);
 if ((sc->vtscsi_flags & VTSCSI_FLAG_INDIRECT) == 0)
  nreqs /= VTSCSI_MIN_SEGMENTS;
 nreqs += VTSCSI_RESERVED_REQUESTS;

 for (i = 0; i < nreqs; i++) {
  req = malloc(sizeof(struct vtscsi_request), M_DEVBUF,
      M_NOWAIT);
  if (req == ((void*)0))
   return (ENOMEM);

  vtscsi_init_request(sc, req);

  sc->vtscsi_nrequests++;
  vtscsi_enqueue_request(sc, req);
 }

 return (0);
}
