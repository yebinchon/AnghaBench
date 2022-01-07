
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_module_data {int (* dmd_chainevh ) (int ,int,int ) ;int dmd_pass; int dmd_chainarg; int dmd_driver; int dmd_busname; int dmd_devclass; } ;
typedef int module_t ;
typedef int kobj_class_t ;
typedef int devclass_t ;


 int DRIVERNAME (int ) ;
 int EOPNOTSUPP ;



 int PDEBUG (char*) ;
 int TRUE ;
 int devclass_add_driver (int ,int ,int,int ) ;
 int devclass_delete_driver (int ,int ) ;
 int devclass_find_internal (int ,int *,int ) ;
 int devclass_quiesce_driver (int ,int ) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int,int ) ;
 int stub3 (int ,int,int ) ;

int
driver_module_handler(module_t mod, int what, void *arg)
{
 struct driver_module_data *dmd;
 devclass_t bus_devclass;
 kobj_class_t driver;
 int error, pass;

 dmd = (struct driver_module_data *)arg;
 bus_devclass = devclass_find_internal(dmd->dmd_busname, ((void*)0), TRUE);
 error = 0;

 switch (what) {
 case 130:
  if (dmd->dmd_chainevh)
   error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);

  pass = dmd->dmd_pass;
  driver = dmd->dmd_driver;
  PDEBUG(("Loading module: driver %s on bus %s (pass %d)",
      DRIVERNAME(driver), dmd->dmd_busname, pass));
  error = devclass_add_driver(bus_devclass, driver, pass,
      dmd->dmd_devclass);
  break;

 case 128:
  PDEBUG(("Unloading module: driver %s from bus %s",
      DRIVERNAME(dmd->dmd_driver),
      dmd->dmd_busname));
  error = devclass_delete_driver(bus_devclass,
      dmd->dmd_driver);

  if (!error && dmd->dmd_chainevh)
   error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);
  break;
 case 129:
  PDEBUG(("Quiesce module: driver %s from bus %s",
      DRIVERNAME(dmd->dmd_driver),
      dmd->dmd_busname));
  error = devclass_quiesce_driver(bus_devclass,
      dmd->dmd_driver);

  if (!error && dmd->dmd_chainevh)
   error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
