
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 int cpu_reset () ;
 int mtx_lock_spin (int *) ;
 int printf (char*) ;
 int smp_ipi_mtx ;
 int spinlock_enter () ;

__attribute__((used)) static void
shutdown_reset(void *junk, int howto)
{

 printf("Rebooting...\n");
 DELAY(1000000);
 spinlock_enter();



 cpu_reset();

}
