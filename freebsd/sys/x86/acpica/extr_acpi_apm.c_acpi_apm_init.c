
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {int acpi_dev_t; int acpi_clone; int apm_cdevs; } ;


 int GID_OPERATOR ;
 int STAILQ_INIT (int *) ;
 int UID_ROOT ;
 int apm_cdevsw ;
 int apm_create_clone (int ,struct acpi_softc*) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;

void
acpi_apm_init(struct acpi_softc *sc)
{


 STAILQ_INIT(&sc->apm_cdevs);
 sc->acpi_clone = apm_create_clone(sc->acpi_dev_t, sc);

 make_dev(&apm_cdevsw, 0, UID_ROOT, GID_OPERATOR, 0660, "apmctl");
 make_dev(&apm_cdevsw, 0, UID_ROOT, GID_OPERATOR, 0664, "apm");
}
