
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int platform_t ;


 int atomic_add_int (int volatile*,int) ;
 int atomic_thread_fence_seq_cst () ;
 int freeze_timebase (int ,int) ;
 int volatile mp_ncpus ;
 int mttb (int ) ;
 int rcpm_dev ;

__attribute__((used)) static void
mpc85xx_smp_timebase_sync(platform_t plat, u_long tb, int ap)
{
 static volatile bool tb_ready;
 static volatile int cpu_done;

 if (ap) {

  while (!tb_ready)
   atomic_thread_fence_seq_cst();
  mttb(tb);
  atomic_add_int(&cpu_done, 1);
  while (cpu_done < mp_ncpus)
   atomic_thread_fence_seq_cst();
 } else {

  freeze_timebase(rcpm_dev, 1);
  tb_ready = 1;
  mttb(tb);
  atomic_add_int(&cpu_done, 1);
  while (cpu_done < mp_ncpus)
   atomic_thread_fence_seq_cst();
  freeze_timebase(rcpm_dev, 0);
 }
}
