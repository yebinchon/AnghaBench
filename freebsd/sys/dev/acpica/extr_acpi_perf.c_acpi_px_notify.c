
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_perf_softc {int dummy; } ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_NOTIFY_PERF_STATES ;
 int acpi_px_available (struct acpi_perf_softc*) ;

__attribute__((used)) static void
acpi_px_notify(ACPI_HANDLE h, UINT32 notify, void *context)
{
 struct acpi_perf_softc *sc;

 sc = context;
 if (notify != ACPI_NOTIFY_PERF_STATES)
  return;

 acpi_px_available(sc);


}
