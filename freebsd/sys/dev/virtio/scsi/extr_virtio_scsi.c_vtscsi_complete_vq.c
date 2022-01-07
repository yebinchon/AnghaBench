
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {int dummy; } ;
struct virtqueue {int dummy; } ;


 int VTSCSI_LOCK_OWNED (struct vtscsi_softc*) ;
 struct vtscsi_request* virtqueue_dequeue (struct virtqueue*,int *) ;
 int vtscsi_complete_request (struct vtscsi_request*) ;

__attribute__((used)) static void
vtscsi_complete_vq(struct vtscsi_softc *sc, struct virtqueue *vq)
{
 struct vtscsi_request *req;

 VTSCSI_LOCK_OWNED(sc);

 while ((req = virtqueue_dequeue(vq, ((void*)0))) != ((void*)0))
  vtscsi_complete_request(req);
}
