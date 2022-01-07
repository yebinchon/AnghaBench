
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int et_flags; scalar_t__ et_min_period; scalar_t__ et_max_period; int (* et_start ) (struct eventtimer*,scalar_t__,scalar_t__) ;int et_active; } ;
typedef scalar_t__ sbintime_t ;


 int ENXIO ;
 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERIODIC ;
 int KASSERT (int,char*) ;
 int stub1 (struct eventtimer*,scalar_t__,scalar_t__) ;

int
et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{

 if (!et->et_active)
  return (ENXIO);
 KASSERT(period >= 0, ("et_start: negative period"));
 KASSERT((et->et_flags & ET_FLAGS_PERIODIC) || period == 0,
  ("et_start: period specified for oneshot-only timer"));
 KASSERT((et->et_flags & ET_FLAGS_ONESHOT) || period != 0,
  ("et_start: period not specified for periodic-only timer"));
 if (period != 0) {
  if (period < et->et_min_period)
          period = et->et_min_period;
  else if (period > et->et_max_period)
          period = et->et_max_period;
 }
 if (period == 0 || first != 0) {
  if (first < et->et_min_period)
          first = et->et_min_period;
  else if (first > et->et_max_period)
          first = et->et_max_period;
 }
 return (et->et_start(et, first, period));
}
