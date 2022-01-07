
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_long ;


 int PAGE_SIZE ;
 int kernel_object ;
 int kmem_unback (int ,int ,int) ;
 int memguard_arena ;
 int memguard_wasted ;
 int round_page (int) ;
 int trunc_page (uintptr_t) ;
 int* v2sizep (int ) ;
 int* v2sizev (int ) ;
 int vmem_xfree (int ,int ,int) ;

void
memguard_free(void *ptr)
{
 vm_offset_t addr;
 u_long req_size, size, sizev;
 char *temp;
 int i;

 addr = trunc_page((uintptr_t)ptr);
 req_size = *v2sizep(addr);
 sizev = *v2sizev(addr);
 size = round_page(req_size);
 temp = ptr;
 for (i = 0; i < size; i += PAGE_SIZE)
  temp[i] = 'M';
 kmem_unback(kernel_object, addr, size);
 if (sizev > size)
  addr -= PAGE_SIZE;
 vmem_xfree(memguard_arena, addr, sizev);
 if (req_size < PAGE_SIZE)
  memguard_wasted -= (PAGE_SIZE - req_size);
}
