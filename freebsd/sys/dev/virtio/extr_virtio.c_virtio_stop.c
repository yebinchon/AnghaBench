
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int VIRTIO_BUS_STOP (int ) ;
 int device_get_parent (int ) ;

void
virtio_stop(device_t dev)
{

 VIRTIO_BUS_STOP(device_get_parent(dev));
}
