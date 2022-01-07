
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tc_frequency; } ;
struct TYPE_3__ {TYPE_2__ tc; } ;


 int TSENTER () ;
 int TSEXIT () ;
 int jz4780_get_timecount (TYPE_2__*) ;
 TYPE_1__* jz4780_timer_sc ;
 int mips_rd_cause () ;

void
DELAY(int usec)
{
 uint32_t counter;
 uint32_t delta, now, previous, remaining;


 if (jz4780_timer_sc == ((void*)0)) {
  for (; usec > 0; usec--)
   for (counter = 200; counter > 0; counter--) {

    mips_rd_cause();
   }
  return;
 }
 TSENTER();
 remaining = usec * ((jz4780_timer_sc->tc.tc_frequency + 999999) /
     1000000);





 remaining += 1;

 previous = jz4780_get_timecount(&jz4780_timer_sc->tc);

 for ( ; ; ) {
  now = jz4780_get_timecount(&jz4780_timer_sc->tc);
  delta = now - previous;

  if (delta >= remaining)
   break;

  previous = now;
  remaining -= delta;
 }
 TSEXIT();
}
