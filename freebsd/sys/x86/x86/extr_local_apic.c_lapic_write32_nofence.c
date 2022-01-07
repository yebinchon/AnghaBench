
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum LAPIC_REGISTERS { ____Placeholder_LAPIC_REGISTERS } LAPIC_REGISTERS ;


 int LAPIC_MEM_MUL ;
 scalar_t__ MSR_APIC_000 ;
 scalar_t__ lapic_map ;
 int wrmsr (scalar_t__,int ) ;
 scalar_t__ x2apic_mode ;

__attribute__((used)) static void
lapic_write32_nofence(enum LAPIC_REGISTERS reg, uint32_t val)
{

 if (x2apic_mode) {
  wrmsr(MSR_APIC_000 + reg, val);
 } else {
  *(volatile uint32_t *)(lapic_map + reg * LAPIC_MEM_MUL) = val;
 }
}
