
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbusb_softc {int dummy; } ;
struct xenbus_device_ivars {int xd_state; int xd_flags; int xd_lock; int xd_node; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef int device_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int XDF_CONNECTING ;





 int XST_NIL ;
 int XenbusStateClosed ;
 int XenbusStateClosing ;
 int XenbusStateConnected ;
 struct xenbus_device_ivars* device_get_ivars (int ) ;
 struct xenbusb_softc* device_get_softc (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int wakeup (int*) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 int xenbusb_release_confighook (struct xenbusb_softc*) ;
 int xs_printf (int ,int ,char*,char*,int) ;
 int xs_scanf (int ,int ,char*,int *,char*,int*) ;

int
xenbusb_write_ivar(device_t dev, device_t child, int index, uintptr_t value)
{
 struct xenbus_device_ivars *ivars = device_get_ivars(child);
 enum xenbus_state newstate;
 int currstate;

 switch (index) {
 case 129:
 {
  int error;

  newstate = (enum xenbus_state)value;
  sx_xlock(&ivars->xd_lock);
  if (ivars->xd_state == newstate) {
   error = 0;
   goto out;
  }

  error = xs_scanf(XST_NIL, ivars->xd_node, "state",
      ((void*)0), "%d", &currstate);
  if (error)
   goto out;

  do {
   error = xs_printf(XST_NIL, ivars->xd_node, "state",
       "%d", newstate);
  } while (error == EAGAIN);
  if (error) {





   if (newstate != XenbusStateClosing)
    xenbus_dev_fatal(dev, error,
       "writing new state");
   goto out;
  }
  ivars->xd_state = newstate;

  if ((ivars->xd_flags & XDF_CONNECTING) != 0
   && (newstate == XenbusStateClosed
    || newstate == XenbusStateConnected)) {
   struct xenbusb_softc *xbs;

   ivars->xd_flags &= ~XDF_CONNECTING;
   xbs = device_get_softc(dev);
   xenbusb_release_confighook(xbs);
  }

  wakeup(&ivars->xd_state);
 out:
  sx_xunlock(&ivars->xd_lock);
  return (error);
 }

 case 132:
 case 128:
 case 131:
 case 130:



  return (EINVAL);
 }

 return (ENOENT);
}
