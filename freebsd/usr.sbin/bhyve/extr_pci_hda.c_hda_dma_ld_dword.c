
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
hda_dma_ld_dword(void *dma_vaddr)
{
 return (*(uint32_t*)dma_vaddr);
}
