
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;


 int acpi_print_mps_flags (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void
acpi_print_local_nmi(u_int lint, uint16_t mps_flags)
{

 printf("\tLINT Pin=%d\n", lint);
 acpi_print_mps_flags(mps_flags);
}
