
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lapic {int lvt_timer_base; int lvt_timer_last; int la_timer_period; } ;


 int APIC_LVTT_TM ;
 int APIC_LVTT_TM_ONE_SHOT ;
 int APIC_LVT_M ;
 int LAPIC_ICR_TIMER ;
 int LAPIC_LVT_TIMER ;
 int lapic_write32 (int ,int) ;

__attribute__((used)) static void
lapic_timer_oneshot(struct lapic *la)
{
 uint32_t value;

 value = la->lvt_timer_base;
 value &= ~(APIC_LVTT_TM | APIC_LVT_M);
 value |= APIC_LVTT_TM_ONE_SHOT;
 la->lvt_timer_last = value;
 lapic_write32(LAPIC_LVT_TIMER, value);
 lapic_write32(LAPIC_ICR_TIMER, la->la_timer_period);
}
