
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_MBOX_CLRX (int) ;
 int cvmx_write_csr (int ,int) ;
 unsigned int hard_int_mask (int) ;
 int mips_wbflush () ;
 int mips_wr_ebase (int) ;
 int octeon_ciu_reset () ;
 int platform_ipi_hardintr_num () ;
 int set_intr_mask (unsigned int) ;

void
platform_init_ap(int cpuid)
{
 unsigned ciu_int_mask, clock_int_mask, ipi_int_mask;




 mips_wr_ebase(0x80000000);




 cvmx_write_csr(CVMX_CIU_MBOX_CLRX(cpuid), 0xffffffff);




 octeon_ciu_reset();




 ciu_int_mask = hard_int_mask(0);
 clock_int_mask = hard_int_mask(5);
 ipi_int_mask = hard_int_mask(platform_ipi_hardintr_num());
 set_intr_mask(ciu_int_mask | clock_int_mask | ipi_int_mask);

 mips_wbflush();
}
