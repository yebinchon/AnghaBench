
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ACPI_FADT_NO_VGA ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int acpi_get_fadt_bootflags (int*) ;

__attribute__((used)) static bool
vga_acpi_disabled(void)
{

 uint16_t flags;
 int ignore;

 ignore = 0;
 TUNABLE_INT_FETCH("hw.vga.acpi_ignore_no_vga", &ignore);
 if (ignore || !acpi_get_fadt_bootflags(&flags))
   return (0);
 return ((flags & ACPI_FADT_NO_VGA) != 0);



}
