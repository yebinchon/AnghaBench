
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_clone_data {int flags; } ;
struct acpi_softc {int dummy; } ;


 int ACPI_EVF_WRITE ;
 int FWRITE ;
 struct apm_clone_data* apm_create_clone (struct cdev*,struct acpi_softc*) ;
 int apmdtor ;
 int devclass_find (char*) ;
 struct acpi_softc* devclass_get_softc (int ,int ) ;
 int devfs_set_cdevpriv (struct apm_clone_data*,int ) ;

__attribute__((used)) static int
apmopen(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct acpi_softc *acpi_sc;
 struct apm_clone_data *clone;

 acpi_sc = devclass_get_softc(devclass_find("acpi"), 0);
 clone = apm_create_clone(dev, acpi_sc);
 devfs_set_cdevpriv(clone, apmdtor);


 if ((flag & FWRITE) != 0)
  clone->flags |= ACPI_EVF_WRITE;

 return (0);
}
