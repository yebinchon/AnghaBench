
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int dummy; } ;


 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int EINVAL ;
 int fwmem_mmap (struct cdev*,int ,int *,int,int *) ;

__attribute__((used)) static int
fw_mmap (struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nproto, vm_memattr_t *memattr)
{

 if (DEV_FWMEM(dev))
  return fwmem_mmap(dev, offset, paddr, nproto, memattr);

 return EINVAL;
}
