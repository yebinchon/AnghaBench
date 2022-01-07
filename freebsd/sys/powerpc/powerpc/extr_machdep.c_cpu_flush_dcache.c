
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int cacheline_size ;
 size_t roundup2 (size_t,int) ;

void
cpu_flush_dcache(void *ptr, size_t len)
{
 register_t addr, off;






 addr = (uintptr_t)ptr;
 off = addr & (cacheline_size - 1);
 addr -= off;
 len = roundup2(len + off, cacheline_size);

 while (len > 0) {
  __asm __volatile ("dcbf 0,%0" :: "r"(addr));
  __asm __volatile ("sync");
  addr += cacheline_size;
  len -= cacheline_size;
 }
}
