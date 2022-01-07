
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int VIRTIO_SIMPLE_PROBE (int ,int ) ;
 int virtio_scsi ;

__attribute__((used)) static int
vtscsi_probe(device_t dev)
{
 return (VIRTIO_SIMPLE_PROBE(dev, virtio_scsi));
}
