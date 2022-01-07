
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SET (int ,int *) ;
 int MTX_SPIN ;
 int all_cpus ;
 int all_harts ;
 int ap_boot_mtx ;
 int boot_hart ;
 int cpu_enum_method ;
 int cpu_init_fdt ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_cpu_early_foreach (int ,int) ;

void
cpu_mp_start(void)
{

 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);

 CPU_SET(0, &all_cpus);
 CPU_SET(boot_hart, &all_harts);

 switch(cpu_enum_method) {





 case 128:
  break;
 }
}
