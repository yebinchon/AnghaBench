
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int64_t ;
struct TYPE_2__ {int tc_frequency; } ;


 int TSENTER () ;
 int TSEXIT () ;
 int cpufunc_nullop () ;
 scalar_t__ get_counts (int *) ;
 int * riscv_timer_sc ;
 TYPE_1__ riscv_timer_timecount ;

void
DELAY(int usec)
{
 int64_t counts, counts_per_usec;
 uint64_t first, last;





 if (riscv_timer_sc == ((void*)0)) {
  for (; usec > 0; usec--)
   for (counts = 200; counts > 0; counts--)




    cpufunc_nullop();
  return;
 }
 TSENTER();


 counts_per_usec = ((riscv_timer_timecount.tc_frequency / 1000000) + 1);







 if (usec >= (0x80000000U / counts_per_usec))
  counts = (0x80000000U / counts_per_usec) - 1;
 else
  counts = usec * counts_per_usec;

 first = get_counts(riscv_timer_sc);

 while (counts > 0) {
  last = get_counts(riscv_timer_sc);
  counts -= (int64_t)(last - first);
  first = last;
 }
 TSEXIT();
}
