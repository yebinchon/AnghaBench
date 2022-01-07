
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_size_t ;


 int VIRTIO_BUS_READ_DEVICE_CONFIG (int ,int ,void*,int) ;
 int device_get_parent (int ) ;

void
virtio_read_device_config(device_t dev, bus_size_t offset, void *dst, int len)
{

 VIRTIO_BUS_READ_DEVICE_CONFIG(device_get_parent(dev),
     offset, dst, len);
}
