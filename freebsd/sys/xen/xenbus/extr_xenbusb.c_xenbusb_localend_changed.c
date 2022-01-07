
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_ivars {int xd_lock; int xd_node; int xd_state; } ;
typedef int device_t ;


 int XENBUS_LOCALEND_CHANGED (int ,char const*) ;
 struct xenbus_device_ivars* device_get_ivars (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xenbus_read_driver_state (int ) ;

void
xenbusb_localend_changed(device_t bus, device_t child, const char *path)
{

 if (strcmp(path, "/state") != 0) {
  struct xenbus_device_ivars *ivars;

  ivars = device_get_ivars(child);
  sx_xlock(&ivars->xd_lock);
  ivars->xd_state = xenbus_read_driver_state(ivars->xd_node);
  sx_xunlock(&ivars->xd_lock);
 }
 XENBUS_LOCALEND_CHANGED(child, path);
}
