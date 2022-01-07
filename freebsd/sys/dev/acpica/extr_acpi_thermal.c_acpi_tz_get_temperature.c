
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {int tz_temperature; int tz_dev; int tz_handle; } ;
typedef int ACPI_STATUS ;


 int ACPI_DB_VALUES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (char*) ;
 int ACPI_VPRINT (int ,int ,char*,int ) ;
 int AcpiFormatException (int ) ;
 int FALSE ;
 int TRUE ;
 int TZ_KELVTOC (int) ;
 int acpi_GetInteger (int ,int ,int*) ;
 int acpi_device_get_parent_softc (int ) ;
 int acpi_tz_sanity (struct acpi_tz_softc*,int*,int ) ;
 int acpi_tz_tmp_name ;

__attribute__((used)) static int
acpi_tz_get_temperature(struct acpi_tz_softc *sc)
{
    int temp;
    ACPI_STATUS status;

    ACPI_FUNCTION_NAME ("acpi_tz_get_temperature");


    status = acpi_GetInteger(sc->tz_handle, acpi_tz_tmp_name, &temp);
    if (ACPI_FAILURE(status)) {
 ACPI_VPRINT(sc->tz_dev, acpi_device_get_parent_softc(sc->tz_dev),
     "error fetching current temperature -- %s\n",
      AcpiFormatException(status));
 return (FALSE);
    }


    acpi_tz_sanity(sc, &temp, acpi_tz_tmp_name);
    if (temp == -1)
 return (FALSE);

    ACPI_DEBUG_PRINT((ACPI_DB_VALUES, "got %d.%dC\n", TZ_KELVTOC(temp)));
    sc->tz_temperature = temp;
    return (TRUE);
}
