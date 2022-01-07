
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int * vm_object_t ;
struct nvdimm_spa_dev {scalar_t__ spa_len; int * spa_obj; } ;
struct cdev {struct nvdimm_spa_dev* si_drv1; } ;


 int EINVAL ;
 int ENXIO ;
 int vm_object_reference (int *) ;

__attribute__((used)) static int
nvdimm_spa_mmap_single(struct cdev *cdev, vm_ooffset_t *offset, vm_size_t size,
    vm_object_t *objp, int nprot)
{
 struct nvdimm_spa_dev *dev;

 dev = cdev->si_drv1;
 if (dev->spa_obj == ((void*)0))
  return (ENXIO);
 if (*offset >= dev->spa_len || *offset + size < *offset ||
     *offset + size > dev->spa_len)
  return (EINVAL);
 vm_object_reference(dev->spa_obj);
 *objp = dev->spa_obj;
 return (0);
}
