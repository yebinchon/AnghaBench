
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_WDOGX (int) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static void
octeon_watchdog_disarm_core(int core)
{

 cvmx_write_csr(CVMX_CIU_WDOGX(core), 0);
}
