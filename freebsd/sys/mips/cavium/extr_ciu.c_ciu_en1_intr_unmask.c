
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int CIU_IRQ_EN1_BEGIN ;
 int CVMX_CIU_INTX_EN1 (int) ;
 int cvmx_get_core_num () ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;

__attribute__((used)) static void
ciu_en1_intr_unmask(void *arg)
{
 uint64_t mask;
 int irq;

 irq = (uintptr_t)arg;
 mask = cvmx_read_csr(CVMX_CIU_INTX_EN1(cvmx_get_core_num()*2));
 mask |= 1ull << (irq - CIU_IRQ_EN1_BEGIN);
 cvmx_write_csr(CVMX_CIU_INTX_EN1(cvmx_get_core_num()*2), mask);
}
