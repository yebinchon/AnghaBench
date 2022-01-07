
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int acpi_subtable_handler ;
struct TYPE_4__ {int Length; } ;
struct TYPE_5__ {TYPE_1__ Header; } ;


 int acpi_walk_subtables (TYPE_2__*,char*,int *,void*) ;
 TYPE_2__* madt ;

__attribute__((used)) static void
madt_walk_table(acpi_subtable_handler *handler, void *arg)
{

 acpi_walk_subtables(madt + 1, (char *)madt + madt->Header.Length,
     handler, arg);
}
