
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int device_t ;


 int VIRTIO_BUS_WITH_FEATURE (int ,int ) ;
 int device_get_parent (int ) ;

int
virtio_with_feature(device_t dev, uint64_t feature)
{

 return (VIRTIO_BUS_WITH_FEATURE(device_get_parent(dev), feature));
}
