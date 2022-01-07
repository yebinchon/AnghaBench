
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_rd_status () ;
 int mips_wr_status (int) ;

__attribute__((used)) static void
mips_mask_soft_irq(void *source)
{
 uintptr_t irq = (uintptr_t)source;

 mips_wr_status(mips_rd_status() & ~((1 << irq) << 8));
}
