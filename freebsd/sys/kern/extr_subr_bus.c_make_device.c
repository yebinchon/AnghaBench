
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int kobj_t ;
typedef TYPE_1__* device_t ;
typedef int * devclass_t ;
struct TYPE_9__ {int unit; int flags; int state; int * softc; int * ivars; scalar_t__ order; scalar_t__ devflags; scalar_t__ busy; int * desc; int * nameunit; int * devclass; int * driver; int children; struct TYPE_9__* parent; } ;


 int DEVICENAME (TYPE_1__*) ;
 int DF_ENABLED ;
 int DF_FIXEDCLASS ;
 int DF_QUIET ;
 int DF_QUIET_CHILDREN ;
 int DF_WILDCARD ;
 int DS_NOTPRESENT ;
 int M_BUS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PDEBUG (char*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int bus_data_devices ;
 int bus_data_generation_update () ;
 scalar_t__ devclass_add_device (int *,TYPE_1__*) ;
 int * devclass_find_internal (char const*,int *,int ) ;
 scalar_t__ device_has_quiet_children (TYPE_1__*) ;
 int devlink ;
 int kobj_delete (int ,int ) ;
 int kobj_init (int ,int *) ;
 TYPE_1__* malloc (int,int ,int) ;
 int null_class ;
 int printf (char*,char const*) ;

__attribute__((used)) static device_t
make_device(device_t parent, const char *name, int unit)
{
 device_t dev;
 devclass_t dc;

 PDEBUG(("%s at %s as unit %d", name, DEVICENAME(parent), unit));

 if (name) {
  dc = devclass_find_internal(name, ((void*)0), TRUE);
  if (!dc) {
   printf("make_device: can't find device class %s\n",
       name);
   return (((void*)0));
  }
 } else {
  dc = ((void*)0);
 }

 dev = malloc(sizeof(*dev), M_BUS, M_NOWAIT|M_ZERO);
 if (!dev)
  return (((void*)0));

 dev->parent = parent;
 TAILQ_INIT(&dev->children);
 kobj_init((kobj_t) dev, &null_class);
 dev->driver = ((void*)0);
 dev->devclass = ((void*)0);
 dev->unit = unit;
 dev->nameunit = ((void*)0);
 dev->desc = ((void*)0);
 dev->busy = 0;
 dev->devflags = 0;
 dev->flags = DF_ENABLED;
 dev->order = 0;
 if (unit == -1)
  dev->flags |= DF_WILDCARD;
 if (name) {
  dev->flags |= DF_FIXEDCLASS;
  if (devclass_add_device(dc, dev)) {
   kobj_delete((kobj_t) dev, M_BUS);
   return (((void*)0));
  }
 }
 if (parent != ((void*)0) && device_has_quiet_children(parent))
  dev->flags |= DF_QUIET | DF_QUIET_CHILDREN;
 dev->ivars = ((void*)0);
 dev->softc = ((void*)0);

 dev->state = DS_NOTPRESENT;

 TAILQ_INSERT_TAIL(&bus_data_devices, dev, devlink);
 bus_data_generation_update();

 return (dev);
}
