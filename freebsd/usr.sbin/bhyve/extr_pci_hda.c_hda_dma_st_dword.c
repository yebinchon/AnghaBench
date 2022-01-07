
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
hda_dma_st_dword(void *dma_vaddr, uint32_t data)
{
 *(uint32_t*)dma_vaddr = data;
}
