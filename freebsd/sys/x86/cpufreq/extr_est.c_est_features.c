
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int driver_t ;


 int ACPI_CAP_C1_IO_HALT ;
 int ACPI_CAP_PERF_MSRS ;

__attribute__((used)) static int
est_features(driver_t *driver, u_int *features)
{





 *features = ACPI_CAP_PERF_MSRS | ACPI_CAP_C1_IO_HALT;
 return (0);
}
