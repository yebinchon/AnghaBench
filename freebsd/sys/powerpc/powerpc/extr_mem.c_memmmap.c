
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct cdev {int dummy; } ;
struct TYPE_4__ {int mr_ndesc; TYPE_1__* mr_desc; } ;
struct TYPE_3__ {int mr_flags; scalar_t__ mr_base; scalar_t__ mr_len; } ;


 scalar_t__ CDEV_MINOR_MEM ;
 int EFAULT ;
 int MDF_ACTIVE ;
 int MDF_ATTRMASK ;




 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_BACK ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int VM_MEMATTR_WRITE_THROUGH ;
 scalar_t__ dev2unit (struct cdev*) ;
 TYPE_2__ mem_range_softc ;

int
memmmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 int i;

 if (dev2unit(dev) == CDEV_MINOR_MEM)
  *paddr = offset;
 else
  return (EFAULT);

 for (i = 0; i < mem_range_softc.mr_ndesc; i++) {
  if (!(mem_range_softc.mr_desc[i].mr_flags & MDF_ACTIVE))
   continue;

  if (offset >= mem_range_softc.mr_desc[i].mr_base &&
      offset < mem_range_softc.mr_desc[i].mr_base +
      mem_range_softc.mr_desc[i].mr_len) {
   switch (mem_range_softc.mr_desc[i].mr_flags &
       MDF_ATTRMASK) {
   case 130:
    *memattr = VM_MEMATTR_WRITE_BACK;
    break;
   case 129:
    *memattr = VM_MEMATTR_WRITE_COMBINING;
    break;
   case 131:
    *memattr = VM_MEMATTR_UNCACHEABLE;
    break;
   case 128:
    *memattr = VM_MEMATTR_WRITE_THROUGH;
    break;
   }

   break;
  }
 }

 return (0);
}
