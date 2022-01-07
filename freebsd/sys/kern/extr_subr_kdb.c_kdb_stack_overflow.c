
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_GET (int ) ;
 int cpuid ;

__attribute__((used)) static void
kdb_stack_overflow(volatile int *x)
{

 if (*x > 10000000)
  return;
 kdb_stack_overflow(x);
 *x += PCPU_GET(cpuid) / 1000000;
}
