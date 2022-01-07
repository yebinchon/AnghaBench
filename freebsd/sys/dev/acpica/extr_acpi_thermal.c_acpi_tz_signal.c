
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_tz_softc {int tz_flags; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int acpi_tz_proc ;
 int thermal ;
 int wakeup (int *) ;

__attribute__((used)) static void
acpi_tz_signal(struct acpi_tz_softc *sc, int flags)
{
    ACPI_LOCK(thermal);
    sc->tz_flags |= flags;
    ACPI_UNLOCK(thermal);
    wakeup(&acpi_tz_proc);
}
