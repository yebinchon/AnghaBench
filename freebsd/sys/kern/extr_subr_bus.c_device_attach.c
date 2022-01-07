
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
typedef TYPE_2__* device_t ;
typedef int attachentropy ;
struct TYPE_18__ {int unit; int flags; scalar_t__ busy; int state; int devclass; TYPE_1__* driver; int parent; } ;
struct TYPE_17__ {char* name; } ;


 int DEVICE_ATTACH (TYPE_2__*) ;
 int DF_ATTACHED_ONCE ;
 int DF_DONENOMATCH ;
 int DF_FIXEDCLASS ;
 int DS_ATTACHED ;
 int DS_ATTACHING ;
 int DS_BUSY ;
 int DS_NOTPRESENT ;
 int ENXIO ;
 int EVENTHANDLER_DIRECT_INVOKE (int (*) (TYPE_2__*),TYPE_2__*) ;
 int KASSERT (int,char*) ;
 int RANDOM_ATTACH ;
 scalar_t__ bootverbose ;
 int devadded (TYPE_2__*) ;
 int devclass_delete_device (int ,TYPE_2__*) ;
 int device_disable (TYPE_2__*) ;
 int device_is_quiet (TYPE_2__*) ;
 int device_print_child (int ,TYPE_2__*) ;
 int device_printf (TYPE_2__*,char*) ;
 int device_set_driver (TYPE_2__*,int *) ;
 int device_sysctl_fini (TYPE_2__*) ;
 int device_sysctl_init (TYPE_2__*) ;
 int device_sysctl_update (TYPE_2__*) ;
 scalar_t__ get_cyclecount () ;
 int printf (char*,char*,int,int) ;
 int random_harvest_direct (scalar_t__*,int,int ) ;
 scalar_t__ resource_disabled (char*,int) ;

int
device_attach(device_t dev)
{
 uint64_t attachtime;
 uint16_t attachentropy;
 int error;

 if (resource_disabled(dev->driver->name, dev->unit)) {
  device_disable(dev);
  if (bootverbose)
    device_printf(dev, "disabled via hints entry\n");
  return (ENXIO);
 }

 device_sysctl_init(dev);
 if (!device_is_quiet(dev))
  device_print_child(dev->parent, dev);
 attachtime = get_cyclecount();
 dev->state = DS_ATTACHING;
 if ((error = DEVICE_ATTACH(dev)) != 0) {
  printf("device_attach: %s%d attach returned %d\n",
      dev->driver->name, dev->unit, error);
  if (!(dev->flags & DF_FIXEDCLASS))
   devclass_delete_device(dev->devclass, dev);
  (void)device_set_driver(dev, ((void*)0));
  device_sysctl_fini(dev);
  KASSERT(dev->busy == 0, ("attach failed but busy"));
  dev->state = DS_NOTPRESENT;
  return (error);
 }
 dev->flags |= DF_ATTACHED_ONCE;



 attachentropy = (uint16_t)(get_cyclecount() - attachtime);
 random_harvest_direct(&attachentropy, sizeof(attachentropy), RANDOM_ATTACH);
 device_sysctl_update(dev);
 if (dev->busy)
  dev->state = DS_BUSY;
 else
  dev->state = DS_ATTACHED;
 dev->flags &= ~DF_DONENOMATCH;
 EVENTHANDLER_DIRECT_INVOKE(device_attach, dev);
 devadded(dev);
 return (0);
}
