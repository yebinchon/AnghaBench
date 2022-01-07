
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbusb_softc {int dummy; } ;
struct xenbus_device_ivars {int xd_local_watch; int xd_otherend_watch; } ;
typedef int device_t ;


 scalar_t__ DS_NOTPRESENT ;
 int ENXIO ;
 int M_TEMP ;
 int XenbusStateClosed ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 struct xenbus_device_ivars* device_get_ivars (int ) ;
 struct xenbusb_softc* device_get_softc (int ) ;
 scalar_t__ device_get_state (int ) ;
 int device_probe_and_attach (int ) ;
 int free (int *,int ) ;
 int xenbus_set_state (int ,int ) ;
 int xenbusb_delete_child (int ,int ) ;
 int xenbusb_device_sysctl_init (int ) ;
 int xenbusb_release_confighook (struct xenbusb_softc*) ;
 int xenbusb_verify_device (int ,int ) ;
 int xs_register_watch (int *) ;

__attribute__((used)) static int
xenbusb_probe_children(device_t dev)
{
 device_t *kids;
 struct xenbus_device_ivars *ivars;
 int i, count, error;

 if (device_get_children(dev, &kids, &count) == 0) {
  for (i = 0; i < count; i++) {
   if (device_get_state(kids[i]) != DS_NOTPRESENT) {




    xenbusb_verify_device(dev, kids[i]);
    continue;
   }

   error = device_probe_and_attach(kids[i]);
   if (error == ENXIO) {
    struct xenbusb_softc *xbs;
    xenbusb_delete_child(dev, kids[i]);






    xbs = device_get_softc(dev);
    xenbusb_release_confighook(xbs);

    continue;
   } else if (error) {





    xenbus_set_state(kids[i], XenbusStateClosed);
    xenbusb_delete_child(dev, kids[i]);

    continue;
   }





   xenbusb_device_sysctl_init(kids[i]);






   ivars = device_get_ivars(kids[i]);
   xs_register_watch(&ivars->xd_otherend_watch);
   xs_register_watch(&ivars->xd_local_watch);
  }
  free(kids, M_TEMP);
 }

 return (0);
}
