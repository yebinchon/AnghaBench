
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TESTS ;
 int barrier () ;
 int bind_cpu (int) ;
 int cpu_spinwait () ;
 int gate ;
 int rdtsc () ;
 int thread_tsc ;

__attribute__((used)) static void *
thread_main(void *arg)
{
 int cpu, i;

 cpu = (intptr_t)arg;
 bind_cpu(cpu);
 for (i = 0; i < TESTS; i++) {
  gate = 1;
  while (gate == 1)
   cpu_spinwait();
  barrier();

  __asm __volatile("lfence");
  thread_tsc = rdtsc();

  barrier();
  gate = 3;
  while (gate == 3)
   cpu_spinwait();
 }
 return (((void*)0));
}
