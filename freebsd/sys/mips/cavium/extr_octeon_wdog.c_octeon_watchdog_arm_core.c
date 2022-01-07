
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int len; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_ciu_wdogx_t ;


 int CVMX_CIU_PP_POKEX (int) ;
 int CVMX_CIU_WDOGX (int) ;
 int DEFAULT_TIMER_VAL ;
 int cvmx_write_csr (int ,int) ;

__attribute__((used)) static void
octeon_watchdog_arm_core(int core)
{
 cvmx_ciu_wdogx_t ciu_wdog;


 cvmx_write_csr(CVMX_CIU_PP_POKEX(core), 1);
 ciu_wdog.u64 = 0;
 ciu_wdog.s.len = DEFAULT_TIMER_VAL;
 ciu_wdog.s.mode = 3;
 cvmx_write_csr(CVMX_CIU_WDOGX(core), ciu_wdog.u64);
}
