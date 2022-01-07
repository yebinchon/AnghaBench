
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_18__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct devreq {int dr_flags; int dr_data; } ;
struct cdev {int dummy; } ;
typedef int driver ;
typedef TYPE_2__* device_t ;
typedef int * devclass_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_31__ {int flags; int unit; TYPE_18__* devclass; int * parent; TYPE_1__* driver; } ;
struct TYPE_30__ {int name; } ;
struct TYPE_29__ {int name; } ;


 int BUS_RESCAN (TYPE_2__*) ;
 int BUS_RESET_CHILD (TYPE_2__*,TYPE_2__*,int) ;
 int BUS_RESUME_CHILD (TYPE_2__*,TYPE_2__*) ;
 int BUS_SUSPEND_CHILD (TYPE_2__*,TYPE_2__*) ;
 int DEVF_CLEAR_DRIVER_DETACH ;
 int DEVF_FORCE_DELETE ;
 int DEVF_FORCE_DETACH ;
 int DEVF_RESET_DETACH ;
 int DEVF_SET_DRIVER_DETACH ;
 int DF_FIXEDCLASS ;
 int DF_REBID ;
 int DF_WILDCARD ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTTY ;
 int ENXIO ;
 int Giant ;
 int PRIV_DRIVER ;
 int bus_child_present (TYPE_2__*) ;
 int copyinstr (int ,char*,int,int *) ;
 int devclass_add_device (int *,TYPE_2__*) ;
 int * devclass_create (char*) ;
 int devclass_delete_device (TYPE_18__*,TYPE_2__*) ;
 int device_attach (TYPE_2__*) ;
 int device_delete_child (TYPE_2__*,TYPE_2__*) ;
 int device_detach (TYPE_2__*) ;
 int device_disable (TYPE_2__*) ;
 int device_do_deferred_actions () ;
 int device_enable (TYPE_2__*) ;
 int device_frozen ;
 TYPE_2__* device_get_parent (TYPE_2__*) ;
 int device_is_alive (TYPE_2__*) ;
 int device_is_attached (TYPE_2__*) ;
 int device_is_enabled (TYPE_2__*) ;
 int device_is_suspended (TYPE_2__*) ;
 int device_probe_and_attach (TYPE_2__*) ;
 int device_quiesce (TYPE_2__*) ;
 int driver_exists (int *,char*) ;
 int find_device (struct devreq*,TYPE_2__**) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int priv_check (struct thread*,int ) ;
 int resource_disabled (int ,int) ;
 int resource_unset_value (int ,int,char*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int
devctl2_ioctl(struct cdev *cdev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct devreq *req;
 device_t dev;
 int error, old;


 mtx_lock(&Giant);
 req = (struct devreq *)data;
 switch (cmd) {
 case 140:
 case 137:
 case 135:
 case 136:
 case 129:
 case 131:
 case 130:
 case 139:
 case 133:
 case 138:
 case 132:
  error = priv_check(td, PRIV_DRIVER);
  if (error == 0)
   error = find_device(req, &dev);
  break;
 case 134:
 case 128:
  error = priv_check(td, PRIV_DRIVER);
  break;
 default:
  error = ENOTTY;
  break;
 }
 if (error) {
  mtx_unlock(&Giant);
  return (error);
 }


 switch (cmd) {
 case 140:
  if (device_is_attached(dev) && (dev->flags & DF_REBID) == 0)
   error = EBUSY;
  else if (!device_is_enabled(dev))
   error = ENXIO;
  else
   error = device_probe_and_attach(dev);
  break;
 case 137:
  if (!device_is_attached(dev)) {
   error = ENXIO;
   break;
  }
  if (!(req->dr_flags & DEVF_FORCE_DETACH)) {
   error = device_quiesce(dev);
   if (error)
    break;
  }
  error = device_detach(dev);
  break;
 case 135:
  if (device_is_enabled(dev)) {
   error = EBUSY;
   break;
  }






  device_enable(dev);
  if (device_is_alive(dev)) {




   if (resource_disabled(dev->driver->name, dev->unit))
    resource_unset_value(dev->driver->name,
        dev->unit, "disabled");
   error = device_attach(dev);
  } else
   error = device_probe_and_attach(dev);
  break;
 case 136:
  if (!device_is_enabled(dev)) {
   error = ENXIO;
   break;
  }

  if (!(req->dr_flags & DEVF_FORCE_DETACH)) {
   error = device_quiesce(dev);
   if (error)
    break;
  }





  old = dev->flags;
  dev->flags |= DF_FIXEDCLASS;
  error = device_detach(dev);
  if (!(old & DF_FIXEDCLASS))
   dev->flags &= ~DF_FIXEDCLASS;
  if (error == 0)
   device_disable(dev);
  break;
 case 129:
  if (device_is_suspended(dev)) {
   error = EBUSY;
   break;
  }
  if (device_get_parent(dev) == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = BUS_SUSPEND_CHILD(device_get_parent(dev), dev);
  break;
 case 131:
  if (!device_is_suspended(dev)) {
   error = EINVAL;
   break;
  }
  if (device_get_parent(dev) == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = BUS_RESUME_CHILD(device_get_parent(dev), dev);
  break;
 case 130: {
  devclass_t dc;
  char driver[128];

  error = copyinstr(req->dr_data, driver, sizeof(driver), ((void*)0));
  if (error)
   break;
  if (driver[0] == '\0') {
   error = EINVAL;
   break;
  }
  if (dev->devclass != ((void*)0) &&
      strcmp(driver, dev->devclass->name) == 0)

   break;





  if (dev->parent == ((void*)0)) {
   error = EINVAL;
   break;
  }
  if (!driver_exists(dev->parent, driver)) {
   error = ENOENT;
   break;
  }
  dc = devclass_create(driver);
  if (dc == ((void*)0)) {
   error = ENOMEM;
   break;
  }


  if (device_is_attached(dev)) {
   if (req->dr_flags & DEVF_SET_DRIVER_DETACH)
    error = device_detach(dev);
   else
    error = EBUSY;
   if (error)
    break;
  }


  if (dev->flags & DF_FIXEDCLASS)
   devclass_delete_device(dev->devclass, dev);
  dev->flags |= DF_WILDCARD;
  dev->unit = -1;


  error = devclass_add_device(dc, dev);
  if (error)
   break;
  dev->flags |= DF_FIXEDCLASS;
  error = device_probe_and_attach(dev);
  break;
 }
 case 139:
  if (!(dev->flags & DF_FIXEDCLASS)) {
   error = 0;
   break;
  }
  if (device_is_attached(dev)) {
   if (req->dr_flags & DEVF_CLEAR_DRIVER_DETACH)
    error = device_detach(dev);
   else
    error = EBUSY;
   if (error)
    break;
  }

  dev->flags &= ~DF_FIXEDCLASS;
  dev->flags |= DF_WILDCARD;
  devclass_delete_device(dev->devclass, dev);
  error = device_probe_and_attach(dev);
  break;
 case 133:
  if (!device_is_attached(dev)) {
   error = ENXIO;
   break;
  }
  error = BUS_RESCAN(dev);
  break;
 case 138: {
  device_t parent;

  parent = device_get_parent(dev);
  if (parent == ((void*)0)) {
   error = EINVAL;
   break;
  }
  if (!(req->dr_flags & DEVF_FORCE_DELETE)) {
   if (bus_child_present(dev) != 0) {
    error = EBUSY;
    break;
   }
  }

  error = device_delete_child(parent, dev);
  break;
 }
 case 134:
  if (device_frozen)
   error = EBUSY;
  else
   device_frozen = 1;
  break;
 case 128:
  if (!device_frozen)
   error = EBUSY;
  else {
   device_do_deferred_actions();
   device_frozen = 0;
  }
  break;
 case 132:
  if ((req->dr_flags & ~(DEVF_RESET_DETACH)) != 0) {
   error = EINVAL;
   break;
  }
  error = BUS_RESET_CHILD(device_get_parent(dev), dev,
      req->dr_flags);
  break;
 }
 mtx_unlock(&Giant);
 return (error);
}
