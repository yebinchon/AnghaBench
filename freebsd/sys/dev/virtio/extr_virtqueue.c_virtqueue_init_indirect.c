
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int dummy; } ;
struct vq_desc_extra {int * indirect; int indirect_paddr; } ;
struct virtqueue {int vq_max_indirect_size; int vq_indirect_mem_size; int vq_nentries; struct vq_desc_extra* vq_descx; int vq_flags; int vq_name; int vq_queue_index; int vq_dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ VIRTIO_BUS_WITH_FEATURE (int ,int ) ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VIRTQUEUE_FLAG_INDIRECT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int * malloc (int,int ,int ) ;
 int virtqueue_init_indirect_list (struct virtqueue*,int *) ;
 int vtophys (int *) ;

__attribute__((used)) static int
virtqueue_init_indirect(struct virtqueue *vq, int indirect_size)
{
 device_t dev;
 struct vq_desc_extra *dxp;
 int i, size;

 dev = vq->vq_dev;

 if (VIRTIO_BUS_WITH_FEATURE(dev, VIRTIO_RING_F_INDIRECT_DESC) == 0) {





  if (bootverbose)
   device_printf(dev, "virtqueue %d (%s) requested "
       "indirect descriptors but not negotiated\n",
       vq->vq_queue_index, vq->vq_name);
  return (0);
 }

 size = indirect_size * sizeof(struct vring_desc);
 vq->vq_max_indirect_size = indirect_size;
 vq->vq_indirect_mem_size = size;
 vq->vq_flags |= VIRTQUEUE_FLAG_INDIRECT;

 for (i = 0; i < vq->vq_nentries; i++) {
  dxp = &vq->vq_descx[i];

  dxp->indirect = malloc(size, M_DEVBUF, M_NOWAIT);
  if (dxp->indirect == ((void*)0)) {
   device_printf(dev, "cannot allocate indirect list\n");
   return (ENOMEM);
  }

  dxp->indirect_paddr = vtophys(dxp->indirect);
  virtqueue_init_indirect_list(vq, dxp->indirect);
 }

 return (0);
}
