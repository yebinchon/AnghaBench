
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct monitorbuf {int stop_state; } ;
typedef int cpuset_t ;
struct TYPE_2__ {struct monitorbuf pc_monitorbuf; } ;


 int CPU_CLR (scalar_t__,int *) ;
 int CPU_EMPTY (int *) ;
 int CPU_NAND (int *,int *) ;
 int CPU_SETOF (int ,int *) ;
 int DELAY (int) ;
 int MONITOR_STOPSTATE_RUNNING ;
 scalar_t__ PCPU_GET (int ) ;
 int all_cpus ;
 int atomic_store_int (int *,int ) ;
 int cpu_reset_proxy ;
 int cpu_reset_proxy_active ;
 scalar_t__ cpu_reset_proxyid ;
 int cpu_reset_real () ;
 int cpuid ;
 int cpustop_restartfunc ;
 int ia32_pause () ;
 TYPE_1__* pcpu_find (int ) ;
 int printf (char*) ;
 scalar_t__ smp_started ;
 int started_cpus ;
 int stop_cpus (int ) ;
 int stopped_cpus ;

void
cpu_reset(void)
{
 cpu_reset_real();

}
