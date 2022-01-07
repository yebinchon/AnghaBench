
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;


 int CVMX_CIU_MBOX_CLRX (int ) ;
 int KASSERT (int,char*) ;
 int PCPU_GET (int ) ;
 int cpuid ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

void
platform_ipi_clear(void)
{
 uint64_t action;

 action = cvmx_read_csr(CVMX_CIU_MBOX_CLRX(PCPU_GET(cpuid)));
 KASSERT(action == 1, ("unexpected IPIs: %#jx", (uintmax_t)action));
 cvmx_write_csr(CVMX_CIU_MBOX_CLRX(PCPU_GET(cpuid)), action);
}
