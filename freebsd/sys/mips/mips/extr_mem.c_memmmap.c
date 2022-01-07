
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int dummy; } ;


 scalar_t__ CDEV_MINOR_MEM ;
 scalar_t__ dev2unit (struct cdev*) ;

int
memmmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 if (dev2unit(dev) != CDEV_MINOR_MEM)
  return (-1);

 *paddr = offset;

 return (0);
}
