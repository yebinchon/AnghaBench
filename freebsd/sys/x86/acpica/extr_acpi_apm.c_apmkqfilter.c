
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int * kn_fop; struct apm_clone_data* kn_hook; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct apm_clone_data {TYPE_1__ sel_read; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int acpi ;
 int apm_readfiltops ;
 int devfs_get_cdevpriv (void**) ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
apmkqfilter(struct cdev *dev, struct knote *kn)
{
 struct apm_clone_data *clone;

 devfs_get_cdevpriv((void **)&clone);
 ACPI_LOCK(acpi);
 kn->kn_hook = clone;
 kn->kn_fop = &apm_readfiltops;
 knlist_add(&clone->sel_read.si_note, kn, 0);
 ACPI_UNLOCK(acpi);
 return (0);
}
