
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int device_t ;


 int VIRTIO_BUS_SETUP_INTR (int ,int) ;
 int device_get_parent (int ) ;

int
virtio_setup_intr(device_t dev, enum intr_type type)
{

 return (VIRTIO_BUS_SETUP_INTR(device_get_parent(dev), type));
}
