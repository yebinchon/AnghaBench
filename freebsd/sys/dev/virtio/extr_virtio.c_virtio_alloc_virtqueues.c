
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int VIRTIO_BUS_ALLOC_VIRTQUEUES (int ,int,int,struct vq_alloc_info*) ;
 int device_get_parent (int ) ;

int
virtio_alloc_virtqueues(device_t dev, int flags, int nvqs,
    struct vq_alloc_info *info)
{

 return (VIRTIO_BUS_ALLOC_VIRTQUEUES(device_get_parent(dev), flags,
     nvqs, info));
}
