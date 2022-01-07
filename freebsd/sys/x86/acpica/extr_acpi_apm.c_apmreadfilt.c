
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {struct apm_clone_data* kn_hook; } ;
struct apm_clone_data {TYPE_1__* acpi_sc; } ;
struct TYPE_2__ {scalar_t__ acpi_next_sstate; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int acpi ;

__attribute__((used)) static int
apmreadfilt(struct knote *kn, long hint)
{
 struct apm_clone_data *clone;
 int sleeping;

 ACPI_LOCK(acpi);
 clone = kn->kn_hook;
 sleeping = clone->acpi_sc->acpi_next_sstate ? 1 : 0;
 ACPI_UNLOCK(acpi);
 return (sleeping);
}
