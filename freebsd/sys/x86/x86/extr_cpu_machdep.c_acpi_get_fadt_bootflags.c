
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int uint16_t ;
struct TYPE_4__ {int BootFlags; } ;
typedef TYPE_1__ ACPI_TABLE_FADT ;


 int ACPI_SIG_FADT ;
 scalar_t__ acpi_find_table (int ) ;
 TYPE_1__* acpi_map_table (scalar_t__,int ) ;
 int acpi_unmap_table (TYPE_1__*) ;

bool
acpi_get_fadt_bootflags(uint16_t *flagsp)
{
 return (0);

}
