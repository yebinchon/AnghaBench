
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int printf (char*,int) ;

__attribute__((used)) static void
acpi_print_io_apic(uint32_t apic_id, uint32_t int_base, uint64_t apic_addr)
{

 printf("\tAPIC ID=%d\n", apic_id);
 printf("\tINT BASE=%d\n", int_base);
 printf("\tADDR=0x%016jx\n", (uintmax_t)apic_addr);
}
