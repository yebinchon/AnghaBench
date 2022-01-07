
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;
struct trapframe {int dummy; } ;
typedef int register_t ;


 long PCPU_GET (int ) ;
 int PCPU_SET (int ,long) ;
 int adjust_edges ;
 int adjust_excess ;
 int adjust_missed ;
 int adjust_ticks ;
 int intr_disable () ;
 int intr_restore (int ) ;
 long rd_tick () ;
 int tick_process (struct trapframe*) ;
 int tickadj ;
 int tickincrement ;
 int tickref ;
 int wr_tick_cmpr (long) ;

__attribute__((used)) static void
tick_intr(struct trapframe *tf)
{
 u_long adj, ref, tick, tick_increment;
 long delta;
 register_t s;
 int count;

 tick_increment = PCPU_GET(tickincrement);
 if (tick_increment != 0) {
  s = intr_disable();
  adj = PCPU_GET(tickadj);
  tick = rd_tick();
  wr_tick_cmpr(tick + tick_increment - adj);
  intr_restore(s);
  ref = PCPU_GET(tickref);
  delta = tick - ref;
  count = 0;
  while (delta >= tick_increment) {
   tick_process(tf);
   delta -= tick_increment;
   ref += tick_increment;
   if (adj != 0)
    adjust_ticks++;
   count++;
  }
  if (count > 0) {
   adjust_missed += count - 1;
   if (delta > (tick_increment >> 3)) {
    if (adj == 0)
     adjust_edges++;
    adj = tick_increment >> 4;
   } else
    adj = 0;
  } else {
   adj = 0;
   adjust_excess++;
  }
  PCPU_SET(tickref, ref);
  PCPU_SET(tickadj, adj);
 } else
  tick_process(tf);
}
