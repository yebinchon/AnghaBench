
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {scalar_t__ tz_cooling_updated; int tz_cooling_saved_freq; int tz_temperature; int tz_dev; } ;
typedef int * device_t ;


 int ACPI_VPRINT (int ,int ,char*,int ,int ) ;
 int CPUFREQ_PRIO_KERN ;
 int CPUFREQ_SET (int *,int *,int ) ;
 int ENXIO ;
 scalar_t__ FALSE ;
 int TZ_KELVTOC (int ) ;
 int acpi_device_get_parent_softc (int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;

__attribute__((used)) static int
acpi_tz_cpufreq_restore(struct acpi_tz_softc *sc)
{
    device_t dev;
    int error;

    if (!sc->tz_cooling_updated)
 return (0);
    if ((dev = devclass_get_device(devclass_find("cpufreq"), 0)) == ((void*)0))
 return (ENXIO);
    ACPI_VPRINT(sc->tz_dev, acpi_device_get_parent_softc(sc->tz_dev),
 "temperature %d.%dC: resuming previous clock speed (%d MHz)\n",
 TZ_KELVTOC(sc->tz_temperature), sc->tz_cooling_saved_freq);
    error = CPUFREQ_SET(dev, ((void*)0), CPUFREQ_PRIO_KERN);
    if (error == 0)
 sc->tz_cooling_updated = FALSE;
    return (error);
}
