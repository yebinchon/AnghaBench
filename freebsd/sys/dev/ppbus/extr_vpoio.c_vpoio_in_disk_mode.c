
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int device_get_parent (int ) ;
 int in_disk_mode ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;

__attribute__((used)) static int
vpoio_in_disk_mode(struct vpoio_data *vpo)
{
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int ret;

 ppb_MS_microseq(ppbus, vpo->vpo_dev, in_disk_mode, &ret);

 return (ret);
}
