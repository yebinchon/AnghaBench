
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int VIRTIO_CONFIG_STATUS_DRIVER_OK ;
 int vtmmio_set_status (int ,int ) ;

__attribute__((used)) static void
vtmmio_reinit_complete(device_t dev)
{

 vtmmio_set_status(dev, VIRTIO_CONFIG_STATUS_DRIVER_OK);
}
