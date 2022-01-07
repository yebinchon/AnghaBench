
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct lapic {int dummy; } ;


 scalar_t__ APIC_TIMER_MAX_COUNT ;
 int DELAY (int) ;
 int LAPIC_CCR_TIMER ;
 scalar_t__ bootverbose ;
 scalar_t__ count_freq ;
 scalar_t__ lapic_read32 (int ) ;
 int lapic_timer_divisor ;
 int lapic_timer_oneshot_nointr (struct lapic*,scalar_t__) ;
 int lapic_timer_set_divisor (int) ;
 int panic (char*) ;
 int printf (char*,int,scalar_t__) ;

__attribute__((used)) static void
lapic_calibrate_initcount(struct lapic *la)
{
 u_long value;


 lapic_timer_divisor = 2;

 do {
  lapic_timer_set_divisor(lapic_timer_divisor);
  lapic_timer_oneshot_nointr(la, APIC_TIMER_MAX_COUNT);
  DELAY(1000000);
  value = APIC_TIMER_MAX_COUNT - lapic_read32(LAPIC_CCR_TIMER);
  if (value != APIC_TIMER_MAX_COUNT)
   break;
  lapic_timer_divisor <<= 1;
 } while (lapic_timer_divisor <= 128);
 if (lapic_timer_divisor > 128)
  panic("lapic: Divisor too big");
 if (bootverbose) {
  printf("lapic: Divisor %lu, Frequency %lu Hz\n",
      lapic_timer_divisor, value);
 }
 count_freq = value;
}
