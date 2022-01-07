
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int dummy; } ;


 int EINVAL ;
 int xs_address () ;

__attribute__((used)) static int
xsd_dev_mmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{

 if (offset != 0)
  return (EINVAL);

 *paddr = xs_address();

 return (0);
}
