
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_NFIT ;
typedef int ACPI_NFIT_SYSTEM_ADDRESS ;


 int ACPI_NFIT_TYPE_SYSTEM_ADDRESS ;
 int malloc_find_matches (int *,int ,int ,int ,int ,void***,int*) ;

void
acpi_nfit_get_spa_ranges(ACPI_TABLE_NFIT *nfitbl,
    ACPI_NFIT_SYSTEM_ADDRESS ***listp, int *countp)
{

 malloc_find_matches(nfitbl, ACPI_NFIT_TYPE_SYSTEM_ADDRESS, 0, 0, 0,
     (void ***)listp, countp);
}
