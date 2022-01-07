
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct attimer_softc {scalar_t__ period; scalar_t__ mode; TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 scalar_t__ MODE_STOP ;
 scalar_t__ clkintr_pending ;
 int clock_lock ;
 scalar_t__ i8254_lastcount ;
 scalar_t__ i8254_max_count ;
 int i8254_offset ;
 scalar_t__ i8254_ticked ;
 scalar_t__ i8254_timecounter ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
clkintr(void *arg)
{
 struct attimer_softc *sc = (struct attimer_softc *)arg;

 if (i8254_timecounter && sc->period != 0) {
  mtx_lock_spin(&clock_lock);
  if (i8254_ticked)
   i8254_ticked = 0;
  else {
   i8254_offset += i8254_max_count;
   i8254_lastcount = 0;
  }
  clkintr_pending = 0;
  mtx_unlock_spin(&clock_lock);
 }

 if (sc->et.et_active && sc->mode != MODE_STOP)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
