
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;
struct riscv_timer_softc {int dummy; } ;


 long get_cycles () ;

__attribute__((used)) static long
get_counts(struct riscv_timer_softc *sc)
{
 uint64_t counts;

 counts = get_cycles();

 return (counts);
}
