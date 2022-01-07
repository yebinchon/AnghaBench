
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout_cpu {int dummy; } ;
struct callout {int c_cpu; } ;


 struct callout_cpu* CC_CPU (int) ;
 int CC_LOCK (struct callout_cpu*) ;
 int CC_UNLOCK (struct callout_cpu*) ;
 int CPUBLOCK ;
 int cpu_spinwait () ;

__attribute__((used)) static struct callout_cpu *
callout_lock(struct callout *c)
{
 struct callout_cpu *cc;
 int cpu;

 for (;;) {
  cpu = c->c_cpu;







  cc = CC_CPU(cpu);
  CC_LOCK(cc);
  if (cpu == c->c_cpu)
   break;
  CC_UNLOCK(cc);
 }
 return (cc);
}
