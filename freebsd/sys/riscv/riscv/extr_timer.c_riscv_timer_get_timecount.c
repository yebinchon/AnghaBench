
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct riscv_timer_softc* tc_priv; } ;
struct riscv_timer_softc {int dummy; } ;


 int get_counts (struct riscv_timer_softc*) ;

__attribute__((used)) static unsigned
riscv_timer_get_timecount(struct timecounter *tc)
{
 struct riscv_timer_softc *sc;

 sc = tc->tc_priv;

 return (get_counts(sc));
}
