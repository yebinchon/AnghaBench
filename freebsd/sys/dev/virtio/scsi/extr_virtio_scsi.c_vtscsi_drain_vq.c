
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {int dummy; } ;
struct virtqueue {int dummy; } ;


 int KASSERT (int ,char*) ;
 int VTSCSI_TRACE ;
 struct vtscsi_request* virtqueue_drain (struct virtqueue*,int*) ;
 int virtqueue_empty (struct virtqueue*) ;
 int vtscsi_cancel_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct virtqueue*) ;

__attribute__((used)) static void
vtscsi_drain_vq(struct vtscsi_softc *sc, struct virtqueue *vq)
{
 struct vtscsi_request *req;
 int last;

 last = 0;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "vq=%p\n", vq);

 while ((req = virtqueue_drain(vq, &last)) != ((void*)0))
  vtscsi_cancel_request(sc, req);

 KASSERT(virtqueue_empty(vq), ("virtqueue not empty"));
}
