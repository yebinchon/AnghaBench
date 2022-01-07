
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int VMCI_MEMORY_ATOMIC ;
 void* contigmalloc (size_t,int ,int ,int ,int,int,int) ;

void *
vmci_alloc_kernel_mem(size_t size, int flags)
{
 void *ptr;

 if ((flags & VMCI_MEMORY_ATOMIC) != 0)
  ptr = contigmalloc(size, M_DEVBUF, M_NOWAIT, 0, 0xFFFFFFFF,
      8, 1024 * 1024);
 else
  ptr = contigmalloc(size, M_DEVBUF, M_WAITOK, 0, 0xFFFFFFFF,
      8, 1024 * 1024);

 return (ptr);
}
