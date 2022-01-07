
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t
hypercall_md(volatile void *hc_addr, uint64_t in_val,
    uint64_t in_paddr, uint64_t out_paddr)
{
 uint64_t status;

 __asm__ __volatile__ ("mov %0, %%r8" : : "r" (out_paddr): "r8");
 __asm__ __volatile__ ("call *%3" : "=a" (status) :
     "c" (in_val), "d" (in_paddr), "m" (hc_addr));
 return (status);
}
