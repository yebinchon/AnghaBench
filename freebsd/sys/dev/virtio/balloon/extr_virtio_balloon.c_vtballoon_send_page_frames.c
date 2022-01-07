
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtballoon_softc {int vtballoon_page_frames; } ;
typedef void virtqueue ;
struct sglist_seg {int dummy; } ;
struct sglist {int dummy; } ;


 int KASSERT (int,char*) ;
 int VTBALLOON_LOCK (struct vtballoon_softc*) ;
 int VTBALLOON_MTX (struct vtballoon_softc*) ;
 int VTBALLOON_UNLOCK (struct vtballoon_softc*) ;
 int msleep (struct vtballoon_softc*,int ,int ,char*,int ) ;
 int sglist_append (struct sglist*,int ,int) ;
 int sglist_init (struct sglist*,int,struct sglist_seg*) ;
 void* virtqueue_dequeue (void*,int *) ;
 int virtqueue_enqueue (void*,void*,struct sglist*,int,int ) ;
 int virtqueue_notify (void*) ;

__attribute__((used)) static void
vtballoon_send_page_frames(struct vtballoon_softc *sc, struct virtqueue *vq,
    int npages)
{
 struct sglist sg;
 struct sglist_seg segs[1];
 void *c;
 int error;

 sglist_init(&sg, 1, segs);

 error = sglist_append(&sg, sc->vtballoon_page_frames,
     npages * sizeof(uint32_t));
 KASSERT(error == 0, ("error adding page frames to sglist"));

 error = virtqueue_enqueue(vq, vq, &sg, 1, 0);
 KASSERT(error == 0, ("error enqueuing page frames to virtqueue"));
 virtqueue_notify(vq);





 VTBALLOON_LOCK(sc);
 while ((c = virtqueue_dequeue(vq, ((void*)0))) == ((void*)0))
  msleep(sc, VTBALLOON_MTX(sc), 0, "vtbspf", 0);
 VTBALLOON_UNLOCK(sc);

 KASSERT(c == vq, ("unexpected balloon operation response"));
}
