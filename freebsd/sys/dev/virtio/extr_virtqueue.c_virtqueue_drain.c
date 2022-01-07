
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int vq_nentries; TYPE_1__* vq_descx; } ;
struct TYPE_2__ {int * cookie; } ;


 int vq_ring_free_chain (struct virtqueue*,int) ;

void *
virtqueue_drain(struct virtqueue *vq, int *last)
{
 void *cookie;
 int idx;

 cookie = ((void*)0);
 idx = *last;

 while (idx < vq->vq_nentries && cookie == ((void*)0)) {
  if ((cookie = vq->vq_descx[idx].cookie) != ((void*)0)) {
   vq->vq_descx[idx].cookie = ((void*)0);

   vq_ring_free_chain(vq, idx);
  }
  idx++;
 }

 *last = idx;

 return (cookie);
}
