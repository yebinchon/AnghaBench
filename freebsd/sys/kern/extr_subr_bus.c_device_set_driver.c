
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct domainset {int dummy; } ;
typedef int kobj_t ;
typedef int * kobj_class_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__ driver_t ;
typedef TYPE_2__* device_t ;
struct TYPE_8__ {scalar_t__ state; int flags; TYPE_1__* driver; int * softc; } ;


 int DF_EXTERNALSOFTC ;
 struct domainset* DOMAINSET_PREF (int) ;
 struct domainset* DOMAINSET_RR () ;
 scalar_t__ DS_ATTACHED ;
 int EBUSY ;
 int ENOMEM ;
 int M_BUS_SC ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bus_data_generation_update () ;
 scalar_t__ bus_get_domain (TYPE_2__*,int*) ;
 int device_set_desc (TYPE_2__*,int *) ;
 int free_domain (int *,int ) ;
 int kobj_delete (int ,int *) ;
 int kobj_init (int ,int *) ;
 int * malloc_domainset (scalar_t__,int ,struct domainset*,int) ;
 int null_class ;

int
device_set_driver(device_t dev, driver_t *driver)
{
 int domain;
 struct domainset *policy;

 if (dev->state >= DS_ATTACHED)
  return (EBUSY);

 if (dev->driver == driver)
  return (0);

 if (dev->softc && !(dev->flags & DF_EXTERNALSOFTC)) {
  free_domain(dev->softc, M_BUS_SC);
  dev->softc = ((void*)0);
 }
 device_set_desc(dev, ((void*)0));
 kobj_delete((kobj_t) dev, ((void*)0));
 dev->driver = driver;
 if (driver) {
  kobj_init((kobj_t) dev, (kobj_class_t) driver);
  if (!(dev->flags & DF_EXTERNALSOFTC) && driver->size > 0) {
   if (bus_get_domain(dev, &domain) == 0)
    policy = DOMAINSET_PREF(domain);
   else
    policy = DOMAINSET_RR();
   dev->softc = malloc_domainset(driver->size, M_BUS_SC,
       policy, M_NOWAIT | M_ZERO);
   if (!dev->softc) {
    kobj_delete((kobj_t) dev, ((void*)0));
    kobj_init((kobj_t) dev, &null_class);
    dev->driver = ((void*)0);
    return (ENOMEM);
   }
  }
 } else {
  kobj_init((kobj_t) dev, &null_class);
 }

 bus_data_generation_update();
 return (0);
}
