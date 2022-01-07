
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_perf_softc {scalar_t__ info_only; } ;
typedef int device_t ;


 int CPUFREQ_FLAG_INFO_ONLY ;
 int CPUFREQ_TYPE_ABSOLUTE ;
 int EINVAL ;
 struct acpi_perf_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_px_type(device_t dev, int *type)
{
 struct acpi_perf_softc *sc;

 if (type == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);

 *type = CPUFREQ_TYPE_ABSOLUTE;
 if (sc->info_only)
  *type |= CPUFREQ_FLAG_INFO_ONLY;
 return (0);
}
