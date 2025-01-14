
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ volatile u_quad_t ;


 int TSENTER () ;
 int TSEXIT () ;
 scalar_t__ volatile howmany (int,int ) ;
 scalar_t__ mftb () ;
 int nop_prio_medium () ;
 int nop_prio_vlow () ;
 int ps_per_tick ;

void
DELAY(int n)
{
 volatile u_quad_t tb;
 u_quad_t ttb;

 TSENTER();
 tb = mftb();
 ttb = tb + howmany((uint64_t)n * 1000000, ps_per_tick);
 nop_prio_vlow();
 while (tb < ttb)
  tb = mftb();
 nop_prio_medium();
 TSEXIT();
}
