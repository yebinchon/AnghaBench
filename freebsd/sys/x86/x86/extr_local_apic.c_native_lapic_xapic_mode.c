
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int intr_disable () ;
 int intr_restore (int ) ;
 int native_lapic_enable_x2apic () ;
 scalar_t__ x2apic_mode ;

__attribute__((used)) static void
native_lapic_xapic_mode(void)
{
 register_t saveintr;

 saveintr = intr_disable();
 if (x2apic_mode)
  native_lapic_enable_x2apic();
 intr_restore(saveintr);
}
