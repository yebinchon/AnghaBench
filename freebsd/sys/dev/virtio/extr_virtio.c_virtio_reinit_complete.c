
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int VIRTIO_BUS_REINIT_COMPLETE (int ) ;
 int device_get_parent (int ) ;

void
virtio_reinit_complete(device_t dev)
{

 VIRTIO_BUS_REINIT_COMPLETE(device_get_parent(dev));
}
