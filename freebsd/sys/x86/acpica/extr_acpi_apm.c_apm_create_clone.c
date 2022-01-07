
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdev {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct apm_clone_data {int flags; TYPE_1__ sel_read; int notify_status; struct acpi_softc* acpi_sc; struct cdev* cdev; } ;
struct acpi_softc {int apm_cdevs; } ;


 int ACPI_EVF_DEVD ;
 int ACPI_EVF_NONE ;
 int ACPI_EVF_WRITE ;
 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int APM_EV_NONE ;
 int M_APMDEV ;
 int M_WAITOK ;
 int STAILQ_INSERT_TAIL (int *,struct apm_clone_data*,int ) ;
 int acpi ;
 int acpi_mutex ;
 int bzero (TYPE_1__*,int) ;
 int devtoname (struct cdev*) ;
 int entries ;
 int knlist_init_mtx (int *,int *) ;
 struct apm_clone_data* malloc (int,int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct apm_clone_data *
apm_create_clone(struct cdev *dev, struct acpi_softc *acpi_sc)
{
 struct apm_clone_data *clone;

 clone = malloc(sizeof(*clone), M_APMDEV, M_WAITOK);
 clone->cdev = dev;
 clone->acpi_sc = acpi_sc;
 clone->notify_status = APM_EV_NONE;
 bzero(&clone->sel_read, sizeof(clone->sel_read));
 knlist_init_mtx(&clone->sel_read.si_note, &acpi_mutex);





 if (strcmp("acpi", devtoname(dev)) == 0)
  clone->flags = ACPI_EVF_DEVD | ACPI_EVF_WRITE;
 else
  clone->flags = ACPI_EVF_NONE;

 ACPI_LOCK(acpi);
 STAILQ_INSERT_TAIL(&acpi_sc->apm_cdevs, clone, entries);
 ACPI_UNLOCK(acpi);
 return (clone);
}
