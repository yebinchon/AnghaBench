
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_cp0_sync () ;

__attribute__((used)) static inline void
tlb_read(void)
{
 __asm __volatile ("tlbr" : : : "memory");
 mips_cp0_sync();
}
