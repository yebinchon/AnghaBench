
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int APICBASE_ENABLED ;
 int APICBASE_X2APIC ;
 int MSR_APICBASE ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void
native_lapic_enable_x2apic(void)
{
 uint64_t apic_base;

 apic_base = rdmsr(MSR_APICBASE);
 apic_base |= APICBASE_X2APIC | APICBASE_ENABLED;
 wrmsr(MSR_APICBASE, apic_base);
}
