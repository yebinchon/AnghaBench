
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct clock_softc {TYPE_1__ et; } ;


 int DPCPU_GET (int) ;
 int DPCPU_SET (int,int) ;
 int FILTER_HANDLED ;
 int compare_ticks ;
 int counter_lower_last ;
 int counter_upper ;
 int mips_rd_count () ;
 int mips_wr_compare (int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;

__attribute__((used)) static int
clock_intr(void *arg)
{
 struct clock_softc *sc = (struct clock_softc *)arg;
 uint32_t cycles_per_tick;
 uint32_t count, compare_last, compare_next, lost_ticks;

 cycles_per_tick = DPCPU_GET(cycles_per_tick);



 count = mips_rd_count();
 compare_last = DPCPU_GET(compare_ticks);
 if (cycles_per_tick > 0) {
  compare_next = count + cycles_per_tick;
  DPCPU_SET(compare_ticks, compare_next);
  mips_wr_compare(compare_next);
 } else
  mips_wr_compare(0xffffffff);


 if (count < DPCPU_GET(counter_lower_last)) {
  DPCPU_SET(counter_upper, DPCPU_GET(counter_upper) + 1);
 }
 DPCPU_SET(counter_lower_last, count);

 if (cycles_per_tick > 0) {





  lost_ticks = DPCPU_GET(lost_ticks);
  lost_ticks += count - compare_last;
  if (lost_ticks > 2 * cycles_per_tick)
   lost_ticks = cycles_per_tick;

  while (lost_ticks >= cycles_per_tick) {
   if (sc->et.et_active)
    sc->et.et_event_cb(&sc->et, sc->et.et_arg);
   lost_ticks -= cycles_per_tick;
  }
  DPCPU_SET(lost_ticks, lost_ticks);
 }
 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);
 return (FILTER_HANDLED);
}
