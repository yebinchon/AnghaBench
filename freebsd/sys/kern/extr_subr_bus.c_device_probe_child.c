
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_13__ ;


typedef TYPE_1__* driverlink_t ;
typedef TYPE_2__* device_t ;
typedef TYPE_3__* devclass_t ;
struct TYPE_24__ {struct TYPE_24__* parent; } ;
struct TYPE_23__ {scalar_t__ state; int flags; scalar_t__ devflags; int unit; TYPE_3__* devclass; TYPE_13__* driver; } ;
struct TYPE_22__ {scalar_t__ pass; TYPE_13__* driver; } ;
struct TYPE_21__ {char* name; } ;


 int BUS_PROBE_NOWILDCARD ;
 int DEVICE_PROBE (TYPE_2__*) ;
 int DF_FIXEDCLASS ;
 int DF_REBID ;
 int DRIVERNAME (TYPE_13__*) ;
 scalar_t__ DS_ALIVE ;
 int ENOMEM ;
 int ENXIO ;
 int GIANT_REQUIRED ;
 int PDEBUG (char*) ;
 scalar_t__ bus_current_pass ;
 int bus_data_generation_update () ;
 int device_detach (TYPE_2__*) ;
 char* device_get_name (TYPE_2__*) ;
 scalar_t__ device_set_devclass (TYPE_2__*,char*) ;
 int device_set_driver (TYPE_2__*,TYPE_13__*) ;
 int device_verbose (TYPE_2__*) ;
 TYPE_1__* first_matching_driver (TYPE_3__*,TYPE_2__*) ;
 TYPE_1__* next_matching_driver (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int panic (char*) ;
 int printf (char*,char*,char const*) ;
 int resource_int_value (char*,int ,char*,scalar_t__*) ;

int
device_probe_child(device_t dev, device_t child)
{
 devclass_t dc;
 driverlink_t best = ((void*)0);
 driverlink_t dl;
 int result, pri = 0;
 int hasclass = (child->devclass != ((void*)0));

 GIANT_REQUIRED;

 dc = dev->devclass;
 if (!dc)
  panic("device_probe_child: parent device has no devclass");





 if (child->state == DS_ALIVE && (child->flags & DF_REBID) == 0)
  return (0);

 for (; dc; dc = dc->parent) {
  for (dl = first_matching_driver(dc, child);
       dl;
       dl = next_matching_driver(dc, child, dl)) {

   if (dl->pass > bus_current_pass)
    continue;

   PDEBUG(("Trying %s", DRIVERNAME(dl->driver)));
   result = device_set_driver(child, dl->driver);
   if (result == ENOMEM)
    return (result);
   else if (result != 0)
    continue;
   if (!hasclass) {
    if (device_set_devclass(child,
        dl->driver->name) != 0) {
     char const * devname =
         device_get_name(child);
     if (devname == ((void*)0))
      devname = "(unknown)";
     printf("driver bug: Unable to set "
         "devclass (class: %s "
         "devname: %s)\n",
         dl->driver->name,
         devname);
     (void)device_set_driver(child, ((void*)0));
     continue;
    }
   }


   resource_int_value(dl->driver->name, child->unit,
       "flags", &child->devflags);

   result = DEVICE_PROBE(child);


   child->devflags = 0;
   if (!hasclass)
    (void)device_set_devclass(child, ((void*)0));





   if (result == 0) {
    best = dl;
    pri = 0;
    break;
   }





   device_verbose(child);






   if (result <= BUS_PROBE_NOWILDCARD &&
       !(child->flags & DF_FIXEDCLASS)) {
    result = ENXIO;
   }





   if (result > 0) {
    (void)device_set_driver(child, ((void*)0));
    continue;
   }






   if (best == ((void*)0) || result > pri) {
    best = dl;
    pri = result;
    continue;
   }
  }




  if (best && pri == 0)
   break;
 }





 if (best) {
  if (child->state > DS_ALIVE && best->driver != child->driver)
   if ((result = device_detach(dev)) != 0)
    return (result);


  if (!child->devclass) {
   result = device_set_devclass(child, best->driver->name);
   if (result != 0)
    return (result);
  }
  result = device_set_driver(child, best->driver);
  if (result != 0)
   return (result);
  resource_int_value(best->driver->name, child->unit,
      "flags", &child->devflags);

  if (pri < 0) {




   DEVICE_PROBE(child);



  } else
   child->flags &= ~DF_REBID;
  child->state = DS_ALIVE;

  bus_data_generation_update();
  return (0);
 }

 return (ENXIO);
}
