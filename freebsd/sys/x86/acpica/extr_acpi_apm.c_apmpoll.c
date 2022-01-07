
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_clone_data {int sel_read; TYPE_1__* acpi_sc; } ;
struct TYPE_2__ {scalar_t__ acpi_next_sstate; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int POLLIN ;
 int POLLRDNORM ;
 int acpi ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
apmpoll(struct cdev *dev, int events, struct thread *td)
{
 struct apm_clone_data *clone;
 int revents;

 revents = 0;
 devfs_get_cdevpriv((void **)&clone);
 ACPI_LOCK(acpi);
 if (clone->acpi_sc->acpi_next_sstate)
  revents |= events & (POLLIN | POLLRDNORM);
 else
  selrecord(td, &clone->sel_read);
 ACPI_UNLOCK(acpi);
 return (revents);
}
