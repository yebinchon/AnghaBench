
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int VIRTIO_RING_F_EVENT_IDX ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VIRTIO_TRANSPORT_F_START ;

uint64_t
virtqueue_filter_features(uint64_t features)
{
 uint64_t mask;

 mask = (1 << VIRTIO_TRANSPORT_F_START) - 1;
 mask |= VIRTIO_RING_F_INDIRECT_DESC;
 mask |= VIRTIO_RING_F_EVENT_IDX;

 return (features & mask);
}
