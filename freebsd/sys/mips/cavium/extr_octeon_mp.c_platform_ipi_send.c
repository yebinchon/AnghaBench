
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_MBOX_SETX (int) ;
 int cvmx_write_csr (int ,int) ;
 int mips_wbflush () ;

void
platform_ipi_send(int cpuid)
{
 cvmx_write_csr(CVMX_CIU_MBOX_SETX(cpuid), 1);
 mips_wbflush();
}
