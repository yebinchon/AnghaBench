
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APIC_SVR_SWEN ;
 int LAPIC_SVR ;
 int lapic_read32 (int ) ;
 int lapic_write32 (int ,int ) ;

__attribute__((used)) static void
native_lapic_disable(void)
{
 uint32_t value;


 value = lapic_read32(LAPIC_SVR);
 value &= ~APIC_SVR_SWEN;
 lapic_write32(LAPIC_SVR, value);
}
