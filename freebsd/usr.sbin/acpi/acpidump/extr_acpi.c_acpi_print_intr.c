
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int acpi_print_mps_flags (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void
acpi_print_intr(uint32_t intr, uint16_t mps_flags)
{

 printf("\tINTR=%d\n", intr);
 acpi_print_mps_flags(mps_flags);
}
