
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int KASSERT (int,char*) ;
 int LAPIC_DCR_TIMER ;
 int ffs (int ) ;
 int * lapic_timer_divisors ;
 int lapic_write32 (int ,int ) ;
 int nitems (int *) ;
 int powerof2 (int ) ;

__attribute__((used)) static void
lapic_timer_set_divisor(u_int divisor)
{

 KASSERT(powerof2(divisor), ("lapic: invalid divisor %u", divisor));
 KASSERT(ffs(divisor) <= nitems(lapic_timer_divisors),
  ("lapic: invalid divisor %u", divisor));
 lapic_write32(LAPIC_DCR_TIMER, lapic_timer_divisors[ffs(divisor) - 1]);
}
