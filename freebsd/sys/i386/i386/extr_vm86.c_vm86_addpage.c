
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct vm86context {int npages; TYPE_1__* pmap; } ;
struct TYPE_2__ {int pte_num; int flags; scalar_t__ kva; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int VM86_PMAPSIZE ;
 int VMAP_MALLOC ;
 scalar_t__ malloc (int ,int ,int ) ;
 int panic (char*) ;

vm_offset_t
vm86_addpage(struct vm86context *vmc, int pagenum, vm_offset_t kva)
{
 int i, flags = 0;

 for (i = 0; i < vmc->npages; i++)
  if (vmc->pmap[i].pte_num == pagenum)
   goto overlap;

 if (vmc->npages == VM86_PMAPSIZE)
  goto full;

 if (kva == 0) {
  kva = (vm_offset_t)malloc(PAGE_SIZE, M_TEMP, M_WAITOK);
  flags = VMAP_MALLOC;
 }

 i = vmc->npages++;
 vmc->pmap[i].flags = flags;
 vmc->pmap[i].kva = kva;
 vmc->pmap[i].pte_num = pagenum;
 return (kva);
overlap:
 panic("vm86_addpage: overlap");
full:
 panic("vm86_addpage: not enough room");
}
