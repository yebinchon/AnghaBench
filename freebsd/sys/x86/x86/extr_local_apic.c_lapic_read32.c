
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum LAPIC_REGISTERS { ____Placeholder_LAPIC_REGISTERS } LAPIC_REGISTERS ;


 int LAPIC_MEM_MUL ;
 scalar_t__ MSR_APIC_000 ;
 scalar_t__ lapic_map ;
 int rdmsr32 (scalar_t__) ;
 scalar_t__ x2apic_mode ;

__attribute__((used)) static uint32_t
lapic_read32(enum LAPIC_REGISTERS reg)
{
 uint32_t res;

 if (x2apic_mode) {
  res = rdmsr32(MSR_APIC_000 + reg);
 } else {
  res = *(volatile uint32_t *)(lapic_map + reg * LAPIC_MEM_MUL);
 }
 return (res);
}
