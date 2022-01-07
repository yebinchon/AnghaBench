
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LAPIC_ESR ;
 int PCPU_GET (int ) ;
 int cpuid ;
 int lapic_eoi () ;
 int lapic_read32 (int ) ;
 int lapic_write32 (int ,int ) ;
 int printf (char*,int,int) ;

void
lapic_handle_error(void)
{
 uint32_t esr;







 lapic_write32(LAPIC_ESR, 0);
 esr = lapic_read32(LAPIC_ESR);

 printf("CPU%d: local APIC error 0x%x\n", PCPU_GET(cpuid), esr);
 lapic_eoi();
}
