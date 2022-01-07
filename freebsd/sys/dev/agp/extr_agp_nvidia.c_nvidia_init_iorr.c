
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int quad_t ;


 int AMD_K7_NUM_IORR ;
 int EINVAL ;
 scalar_t__ IORR_BASE0 ;
 scalar_t__ IORR_MASK0 ;
 scalar_t__ SYSCFG ;
 int rdmsr (scalar_t__) ;
 int rounddown2 (int,int) ;
 int wrmsr (scalar_t__,int) ;

__attribute__((used)) static int
nvidia_init_iorr(u_int32_t addr, u_int32_t size)
{
 quad_t base, mask, sys;
 u_int32_t iorr_addr, free_iorr_addr;



 free_iorr_addr = AMD_K7_NUM_IORR;
 for(iorr_addr = 0; iorr_addr < AMD_K7_NUM_IORR; iorr_addr++) {
  base = rdmsr(IORR_BASE0 + 2 * iorr_addr);
  mask = rdmsr(IORR_MASK0 + 2 * iorr_addr);

  if ((base & 0xfffff000ULL) == (addr & 0xfffff000))
   break;

  if ((mask & 0x00000800ULL) == 0)
   free_iorr_addr = iorr_addr;
 }

 if (iorr_addr >= AMD_K7_NUM_IORR) {
  iorr_addr = free_iorr_addr;
  if (iorr_addr >= AMD_K7_NUM_IORR)
   return (EINVAL);
 }

 base = (addr & ~0xfff) | 0x18;
 mask = (0xfULL << 32) | rounddown2(0xfffff000, size) | 0x800;
 wrmsr(IORR_BASE0 + 2 * iorr_addr, base);
 wrmsr(IORR_MASK0 + 2 * iorr_addr, mask);

 sys = rdmsr(SYSCFG);
 sys |= 0x00100000ULL;
 wrmsr(SYSCFG, sys);

 return (0);
}
