
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int kobj_class_t ;
typedef TYPE_2__* driverlink_t ;
struct TYPE_17__ {int refs; int name; TYPE_1__** baseclasses; } ;
typedef TYPE_3__ driver_t ;
typedef TYPE_4__* devclass_t ;
struct TYPE_18__ {int drivers; } ;
struct TYPE_16__ {int pass; int flags; TYPE_3__* driver; } ;
struct TYPE_15__ {char* name; } ;


 int BUS_PASS_ROOT ;
 int DL_DEFERRED_PROBE ;
 int DRIVERNAME (TYPE_3__*) ;
 int EINVAL ;
 int ENOMEM ;
 int M_BUS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PDEBUG (char*) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TRUE ;
 int bus_data_generation_update () ;
 int devclass_driver_added (TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* devclass_find_internal (int ,char const*,int ) ;
 scalar_t__ device_frozen ;
 int driver_register_pass (TYPE_2__*) ;
 int kobj_class_compile (int ) ;
 int link ;
 TYPE_2__* malloc (int,int ,int) ;

int
devclass_add_driver(devclass_t dc, driver_t *driver, int pass, devclass_t *dcp)
{
 driverlink_t dl;
 const char *parentname;

 PDEBUG(("%s", DRIVERNAME(driver)));


 if (pass <= BUS_PASS_ROOT)
  return (EINVAL);

 dl = malloc(sizeof *dl, M_BUS, M_NOWAIT|M_ZERO);
 if (!dl)
  return (ENOMEM);







 kobj_class_compile((kobj_class_t) driver);
 if (driver->baseclasses)
  parentname = driver->baseclasses[0]->name;
 else
  parentname = ((void*)0);
 *dcp = devclass_find_internal(driver->name, parentname, TRUE);

 dl->driver = driver;
 TAILQ_INSERT_TAIL(&dc->drivers, dl, link);
 driver->refs++;
 dl->pass = pass;
 driver_register_pass(dl);

 if (device_frozen) {
  dl->flags |= DL_DEFERRED_PROBE;
 } else {
  devclass_driver_added(dc, driver);
 }
 bus_data_generation_update();
 return (0);
}
