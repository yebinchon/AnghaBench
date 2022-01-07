
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct apm_clone_data {scalar_t__ notify_status; TYPE_1__ sel_read; struct acpi_softc* acpi_sc; } ;
struct acpi_softc {scalar_t__ acpi_next_sstate; int apm_cdevs; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 scalar_t__ APM_EV_ACKED ;
 int M_APMDEV ;
 int STAILQ_REMOVE (int *,struct apm_clone_data*,int ,int ) ;
 int acpi ;
 int acpi_AckSleepState (struct apm_clone_data*,int ) ;
 int apm_clone_data ;
 int entries ;
 int free (struct apm_clone_data*,int ) ;
 int knlist_destroy (int *) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
apmdtor(void *data)
{
 struct apm_clone_data *clone;
 struct acpi_softc *acpi_sc;

 clone = data;
 acpi_sc = clone->acpi_sc;


 if (acpi_sc->acpi_next_sstate != 0 &&
     clone->notify_status != APM_EV_ACKED)
  acpi_AckSleepState(clone, 0);


 ACPI_LOCK(acpi);
 STAILQ_REMOVE(&acpi_sc->apm_cdevs, clone, apm_clone_data, entries);
 seldrain(&clone->sel_read);
 knlist_destroy(&clone->sel_read.si_note);
 ACPI_UNLOCK(acpi);
 free(clone, M_APMDEV);
}
