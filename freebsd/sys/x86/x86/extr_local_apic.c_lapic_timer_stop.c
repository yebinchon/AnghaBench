
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lapic {scalar_t__ la_timer_mode; int lvt_timer_last; int lvt_timer_base; } ;


 int APIC_LVTT_TM ;
 int APIC_LVT_M ;
 int LAPIC_LVT_TIMER ;
 scalar_t__ LAT_MODE_DEADLINE ;
 int MSR_TSC_DEADLINE ;
 int lapic_write32 (int ,int ) ;
 int mfence () ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static void
lapic_timer_stop(struct lapic *la)
{
 uint32_t value;

 if (la->la_timer_mode == LAT_MODE_DEADLINE) {
  wrmsr(MSR_TSC_DEADLINE, 0);
  mfence();
 } else {
  value = la->lvt_timer_base;
  value &= ~APIC_LVTT_TM;
  value |= APIC_LVT_M;
  la->lvt_timer_last = value;
  lapic_write32(LAPIC_LVT_TIMER, value);
 }
}
