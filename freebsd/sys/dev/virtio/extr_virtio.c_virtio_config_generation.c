
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int VIRTIO_BUS_CONFIG_GENERATION (int ) ;
 int device_get_parent (int ) ;

int
virtio_config_generation(device_t dev)
{

 return (VIRTIO_BUS_CONFIG_GENERATION(device_get_parent(dev)));
}
