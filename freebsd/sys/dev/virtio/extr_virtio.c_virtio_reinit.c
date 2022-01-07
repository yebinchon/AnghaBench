
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int device_t ;


 int VIRTIO_BUS_REINIT (int ,int ) ;
 int device_get_parent (int ) ;

int
virtio_reinit(device_t dev, uint64_t features)
{

 return (VIRTIO_BUS_REINIT(device_get_parent(dev), features));
}
