
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_wdog_core_softc {scalar_t__ csc_core; } ;


 int CVMX_CIU_PP_POKEX (scalar_t__) ;
 int FILTER_HANDLED ;
 int KASSERT (int,char*) ;
 scalar_t__ cvmx_get_core_num () ;
 int cvmx_write_csr (int ,int) ;

__attribute__((used)) static int
octeon_wdog_intr(void *arg)
{
 struct octeon_wdog_core_softc *csc = arg;

 KASSERT(csc->csc_core == cvmx_get_core_num(),
     ("got watchdog interrupt for core %u on core %u.",
      csc->csc_core, cvmx_get_core_num()));

 (void)csc;


 cvmx_write_csr(CVMX_CIU_PP_POKEX(cvmx_get_core_num()), 1);

 return (FILTER_HANDLED);
}
