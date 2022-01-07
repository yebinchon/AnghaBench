
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lapic {int lvt_timer_base; int lvt_timer_last; scalar_t__ la_timer_period; } ;


 int APIC_LVTT_TM ;
 int APIC_LVTT_TM_TSCDLT ;
 int APIC_LVT_M ;
 int LAPIC_LVT_TIMER ;
 int MSR_TSC_DEADLINE ;
 int lapic_write32_nofence (int ,int) ;
 int mfence () ;
 scalar_t__ rdtsc () ;
 int wrmsr (int ,scalar_t__) ;
 int x2apic_mode ;

__attribute__((used)) static void
lapic_timer_deadline(struct lapic *la)
{
 uint32_t value;

 value = la->lvt_timer_base;
 value &= ~(APIC_LVTT_TM | APIC_LVT_M);
 value |= APIC_LVTT_TM_TSCDLT;
 if (value != la->lvt_timer_last) {
  la->lvt_timer_last = value;
  lapic_write32_nofence(LAPIC_LVT_TIMER, value);
  if (!x2apic_mode)
   mfence();
 }
 wrmsr(MSR_TSC_DEADLINE, la->la_timer_period + rdtsc());
}
