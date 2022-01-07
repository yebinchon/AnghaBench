
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APIC_SPURIOUS_INT ;
 int APIC_SVR_EOI_SUPPRESSION ;
 int APIC_SVR_FEN ;
 int APIC_SVR_FOCUS ;
 int APIC_SVR_SWEN ;
 int APIC_SVR_VECTOR ;
 int LAPIC_SVR ;
 scalar_t__ lapic_eoi_suppression ;
 int lapic_read32 (int ) ;
 int lapic_write32 (int ,int) ;

__attribute__((used)) static void
lapic_enable(void)
{
 uint32_t value;


 value = lapic_read32(LAPIC_SVR);
 value &= ~(APIC_SVR_VECTOR | APIC_SVR_FOCUS);
 value |= APIC_SVR_FEN | APIC_SVR_SWEN | APIC_SPURIOUS_INT;
 if (lapic_eoi_suppression)
  value |= APIC_SVR_EOI_SUPPRESSION;
 lapic_write32(LAPIC_SVR, value);
}
