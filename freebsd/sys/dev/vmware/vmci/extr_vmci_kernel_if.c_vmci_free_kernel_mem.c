
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int contigfree (void*,size_t,int ) ;

void
vmci_free_kernel_mem(void *ptr, size_t size)
{

 contigfree(ptr, size, M_DEVBUF);
}
