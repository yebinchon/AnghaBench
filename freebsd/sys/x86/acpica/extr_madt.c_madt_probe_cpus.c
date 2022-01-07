
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Length; } ;
struct TYPE_6__ {TYPE_1__ Header; } ;


 int ACPI_SIG_MADT ;
 int KASSERT (int ,char*) ;
 TYPE_2__* acpi_map_table (int ,int ) ;
 int acpi_unmap_table (TYPE_2__*) ;
 TYPE_2__* madt ;
 int madt_length ;
 int madt_physaddr ;
 int madt_probe_cpus_handler ;
 int madt_walk_table (int ,int *) ;

__attribute__((used)) static int
madt_probe_cpus(void)
{

 madt = acpi_map_table(madt_physaddr, ACPI_SIG_MADT);
 madt_length = madt->Header.Length;
 KASSERT(madt != ((void*)0), ("Unable to re-map MADT"));
 madt_walk_table(madt_probe_cpus_handler, ((void*)0));
 acpi_unmap_table(madt);
 madt = ((void*)0);
 return (0);
}
