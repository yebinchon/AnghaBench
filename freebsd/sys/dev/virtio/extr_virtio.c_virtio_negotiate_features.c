
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int device_t ;


 int VIRTIO_BUS_NEGOTIATE_FEATURES (int ,int ) ;
 int device_get_parent (int ) ;

uint64_t
virtio_negotiate_features(device_t dev, uint64_t child_features)
{

 return (VIRTIO_BUS_NEGOTIATE_FEATURES(device_get_parent(dev),
     child_features));
}
