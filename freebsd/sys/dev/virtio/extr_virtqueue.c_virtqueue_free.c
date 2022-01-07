
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {scalar_t__ vq_free_cnt; scalar_t__ vq_nentries; int vq_flags; int * vq_ring_mem; scalar_t__ vq_ring_size; int vq_name; int vq_dev; } ;


 int M_DEVBUF ;
 int VIRTQUEUE_FLAG_INDIRECT ;
 int contigfree (int *,scalar_t__,int ) ;
 int device_printf (int ,char*,int ,scalar_t__) ;
 int free (struct virtqueue*,int ) ;
 int virtqueue_free_indirect (struct virtqueue*) ;

void
virtqueue_free(struct virtqueue *vq)
{

 if (vq->vq_free_cnt != vq->vq_nentries) {
  device_printf(vq->vq_dev, "%s: freeing non-empty virtqueue, "
      "leaking %d entries\n", vq->vq_name,
      vq->vq_nentries - vq->vq_free_cnt);
 }

 if (vq->vq_flags & VIRTQUEUE_FLAG_INDIRECT)
  virtqueue_free_indirect(vq);

 if (vq->vq_ring_mem != ((void*)0)) {
  contigfree(vq->vq_ring_mem, vq->vq_ring_size, M_DEVBUF);
  vq->vq_ring_size = 0;
  vq->vq_ring_mem = ((void*)0);
 }

 free(vq, M_DEVBUF);
}
