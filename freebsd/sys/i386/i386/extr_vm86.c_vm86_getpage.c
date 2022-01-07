
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct vm86context {int npages; TYPE_1__* pmap; } ;
struct TYPE_2__ {int pte_num; int kva; } ;



vm_offset_t
vm86_getpage(struct vm86context *vmc, int pagenum)
{
 int i;

 for (i = 0; i < vmc->npages; i++)
  if (vmc->pmap[i].pte_num == pagenum)
   return (vmc->pmap[i].kva);
 return (0);
}
