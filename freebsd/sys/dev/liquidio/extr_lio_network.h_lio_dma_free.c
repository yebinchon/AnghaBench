
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int kmem_free (int ,size_t) ;

__attribute__((used)) static inline void
lio_dma_free(size_t size, void *cpu_addr)
{

 kmem_free((vm_offset_t)cpu_addr, size);
}
