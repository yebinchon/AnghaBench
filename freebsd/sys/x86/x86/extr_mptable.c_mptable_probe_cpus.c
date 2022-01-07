
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ config_type; } ;


 int max_apic_id ;
 int mp_maxid ;
 int mp_ncpus ;
 TYPE_1__* mpfps ;
 int mptable_probe_cpus_handler ;
 int mptable_walk_table (int ,int *) ;

__attribute__((used)) static int
mptable_probe_cpus(void)
{
 u_int cpu_mask;


 if (mpfps->config_type != 0) {




  max_apic_id = 1;
 } else {
  mptable_walk_table(mptable_probe_cpus_handler, &cpu_mask);
 }
 return (0);
}
