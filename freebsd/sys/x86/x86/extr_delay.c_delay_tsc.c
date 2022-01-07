
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int cpu_spinwait () ;
 scalar_t__ rdtsc () ;
 int sched_pin () ;
 int sched_unpin () ;
 int tsc_freq ;

__attribute__((used)) static void
delay_tsc(int n)
{
 uint64_t end, now;





 sched_pin();
 now = rdtsc();
 end = now + tsc_freq * n / 1000000;
 do {
  cpu_spinwait();
  now = rdtsc();
 } while (now < end);
 sched_unpin();
}
