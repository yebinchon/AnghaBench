
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int dummy; } ;
struct acpi_perf_softc {scalar_t__ px_max_avail; scalar_t__ px_curr_state; int dev; int * px_states; int handle; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ CPUFREQ_VAL_UNKNOWN ;
 int acpi_GetInteger (int ,char*,scalar_t__*) ;
 int acpi_px_set (int ,struct cf_setting*) ;
 int acpi_px_to_set (int ,int *,struct cf_setting*) ;

__attribute__((used)) static void
acpi_px_available(struct acpi_perf_softc *sc)
{
 ACPI_STATUS status;
 struct cf_setting set;

 status = acpi_GetInteger(sc->handle, "_PPC", &sc->px_max_avail);


 if (ACPI_SUCCESS(status)) {
  if (sc->px_curr_state != CPUFREQ_VAL_UNKNOWN &&
      sc->px_curr_state > sc->px_max_avail) {
   acpi_px_to_set(sc->dev,
       &sc->px_states[sc->px_max_avail], &set);
   acpi_px_set(sc->dev, &set);
  }
 } else
  sc->px_max_avail = 0;
}
