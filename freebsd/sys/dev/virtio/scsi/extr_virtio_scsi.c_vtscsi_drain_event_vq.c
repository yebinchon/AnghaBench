
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {struct virtqueue* vtscsi_event_vq; } ;
struct virtqueue {int dummy; } ;


 int KASSERT (int ,char*) ;
 int * virtqueue_drain (struct virtqueue*,int*) ;
 int virtqueue_empty (struct virtqueue*) ;

__attribute__((used)) static void
vtscsi_drain_event_vq(struct vtscsi_softc *sc)
{
 struct virtqueue *vq;
 int last;

 vq = sc->vtscsi_event_vq;
 last = 0;

 while (virtqueue_drain(vq, &last) != ((void*)0))
  ;

 KASSERT(virtqueue_empty(vq), ("eventvq not empty"));
}
