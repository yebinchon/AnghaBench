
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int acpi_timer_bsh ;
 int acpi_timer_bst ;
 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static __inline uint32_t
acpi_timer_read(void)
{

    return (bus_space_read_4(acpi_timer_bst, acpi_timer_bsh, 0));
}
