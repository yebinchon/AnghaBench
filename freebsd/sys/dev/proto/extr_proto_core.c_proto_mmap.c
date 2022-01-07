
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct TYPE_2__ {int busdma; int res; } ;
struct proto_res {int r_type; int r_size; TYPE_1__ r_d; } ;
struct cdev {struct proto_res* si_drv2; } ;


 int EACCES ;
 int EINVAL ;
 int ENXIO ;
 int PAGE_MASK ;

 int PROT_EXEC ;

 int VM_MEMATTR_UNCACHEABLE ;
 int proto_busdma_mmap_allowed (int ,int) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
proto_mmap(struct cdev *cdev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct proto_res *r;

 if (offset & PAGE_MASK)
  return (EINVAL);
 if (prot & PROT_EXEC)
  return (EACCES);

 r = cdev->si_drv2;

 switch (r->r_type) {
 case 128:
  if (offset >= r->r_size)
   return (EINVAL);
  *paddr = rman_get_start(r->r_d.res) + offset;

  *memattr = VM_MEMATTR_UNCACHEABLE;

  break;
 case 129:
  if (!proto_busdma_mmap_allowed(r->r_d.busdma, offset))
   return (EINVAL);
  *paddr = offset;
  break;
 default:
  return (ENXIO);
 }
 return (0);
}
