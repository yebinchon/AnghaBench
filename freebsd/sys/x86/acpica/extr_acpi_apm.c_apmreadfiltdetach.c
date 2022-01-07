
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {struct apm_clone_data* kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct apm_clone_data {TYPE_1__ sel_read; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int acpi ;
 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
apmreadfiltdetach(struct knote *kn)
{
 struct apm_clone_data *clone;

 ACPI_LOCK(acpi);
 clone = kn->kn_hook;
 knlist_remove(&clone->sel_read.si_note, kn, 0);
 ACPI_UNLOCK(acpi);
}
