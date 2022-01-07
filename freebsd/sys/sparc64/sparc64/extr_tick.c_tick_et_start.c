
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct eventtimer {int dummy; } ;
typedef int sbintime_t ;
typedef int register_t ;
struct TYPE_2__ {int et_frequency; } ;


 int PCPU_SET (int ,int) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int rd_tick () ;
 int roundup (int,int) ;
 TYPE_1__ tick_et ;
 int tickadj ;
 int tickincrement ;
 int tickref ;
 int wr_tick_cmpr (int) ;

__attribute__((used)) static int
tick_et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 u_long base, div, fdiv;
 register_t s;

 if (period != 0)
  div = (tick_et.et_frequency * period) >> 32;
 else
  div = 0;
 if (first != 0)
  fdiv = (tick_et.et_frequency * first) >> 32;
 else
  fdiv = div;
 PCPU_SET(tickincrement, div);






 s = intr_disable();
 base = rd_tick();
 if (div != 0) {
  PCPU_SET(tickadj, 0);
  base = roundup(base, div);
 }
 PCPU_SET(tickref, base);
 wr_tick_cmpr(base + fdiv);
 intr_restore(s);
 return (0);
}
