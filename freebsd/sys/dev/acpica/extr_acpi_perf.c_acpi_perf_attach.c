
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_perf_softc {int info_only; int px_curr_state; scalar_t__ px_max_avail; int handle; int dev; } ;
typedef int device_t ;


 int AcpiOsExecute (int ,int ,int *) ;
 int CPUFREQ_VAL_UNKNOWN ;
 int ENXIO ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_get_handle (int ) ;
 scalar_t__ acpi_perf_evaluate (int ) ;
 int acpi_px_startup ;
 int cpufreq_register (int ) ;
 struct acpi_perf_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_perf_attach(device_t dev)
{
 struct acpi_perf_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->handle = acpi_get_handle(dev);
 sc->px_max_avail = 0;
 sc->px_curr_state = CPUFREQ_VAL_UNKNOWN;
 if (acpi_perf_evaluate(dev) != 0)
  return (ENXIO);
 AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_px_startup, ((void*)0));
 if (!sc->info_only)
  cpufreq_register(dev);

 return (0);
}
