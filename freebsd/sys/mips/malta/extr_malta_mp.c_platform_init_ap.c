
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hard_int_mask (int) ;
 int mips_wbflush () ;
 int platform_ipi_clear () ;
 int platform_ipi_softintr_num () ;
 int set_intr_mask (int) ;
 int soft_int_mask (int ) ;

void
platform_init_ap(int cpuid)
{
 uint32_t clock_int_mask;
 uint32_t ipi_intr_mask;




 platform_ipi_clear();




 ipi_intr_mask = soft_int_mask(platform_ipi_softintr_num());
 clock_int_mask = hard_int_mask(5);
 set_intr_mask(ipi_intr_mask | clock_int_mask);

 mips_wbflush();
}
