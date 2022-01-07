
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_CIU_INTX_EN0 (int) ;
 int CVMX_CIU_INTX_EN1 (int) ;
 int OCTEON_IRQ_MBOX0 ;
 int OCTEON_IRQ_MBOX1 ;
 int OCTEON_PMC_IRQ ;
 int cvmx_get_core_num () ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int mips_rd_cvmctl () ;
 int mips_wr_cvmctl (int) ;

void
octeon_ciu_reset(void)
{
 uint64_t cvmctl;


 cvmx_write_csr(CVMX_CIU_INTX_EN0(cvmx_get_core_num()*2), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN0(cvmx_get_core_num()*2+1), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN1(cvmx_get_core_num()*2), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN1(cvmx_get_core_num()*2+1), 0);
 cvmctl = mips_rd_cvmctl();
 cvmctl &= ~(7 << 7);
 cvmctl |= (OCTEON_PMC_IRQ + 2) << 7;
 mips_wr_cvmctl(cvmctl);
}
