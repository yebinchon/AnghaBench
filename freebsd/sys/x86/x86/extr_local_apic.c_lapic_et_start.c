
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lapic {int la_timer_period; } ;
struct eventtimer {int et_frequency; } ;
typedef int sbintime_t ;


 int LAT_MODE_DEADLINE ;
 int LAT_MODE_ONESHOT ;
 int LAT_MODE_PERIODIC ;
 size_t PCPU_GET (int ) ;
 int apic_id ;
 int lapic_change_mode (struct eventtimer*,struct lapic*,int ) ;
 int lapic_timer_deadline (struct lapic*) ;
 int lapic_timer_oneshot (struct lapic*) ;
 int lapic_timer_periodic (struct lapic*) ;
 scalar_t__ lapic_timer_tsc_deadline ;
 struct lapic* lapics ;

__attribute__((used)) static int
lapic_et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct lapic *la;

 la = &lapics[PCPU_GET(apic_id)];
 if (period != 0) {
  lapic_change_mode(et, la, LAT_MODE_PERIODIC);
  la->la_timer_period = ((uint32_t)et->et_frequency * period) >>
      32;
  lapic_timer_periodic(la);
 } else if (lapic_timer_tsc_deadline) {
  lapic_change_mode(et, la, LAT_MODE_DEADLINE);
  la->la_timer_period = (et->et_frequency * first) >> 32;
  lapic_timer_deadline(la);
 } else {
  lapic_change_mode(et, la, LAT_MODE_ONESHOT);
  la->la_timer_period = ((uint32_t)et->et_frequency * first) >>
      32;
  lapic_timer_oneshot(la);
 }
 return (0);
}
