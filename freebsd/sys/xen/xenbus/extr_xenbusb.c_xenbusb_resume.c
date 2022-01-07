
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* node; } ;
struct xenbus_device_ivars {char* xd_otherend_path; scalar_t__ xd_state; int xd_lock; TYPE_1__ xd_otherend_watch; scalar_t__ xd_otherend_path_len; } ;
typedef char device_t ;


 int DEVICE_RESUME (char) ;
 scalar_t__ DS_NOTPRESENT ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_XENBUS ;
 int XENBUSB_GET_OTHEREND_NODE (char,struct xenbus_device_ivars*) ;
 scalar_t__ XenbusStateClosed ;
 scalar_t__ XenbusStateConnected ;
 int XenbusStateInitialising ;
 scalar_t__ device_get_children (char,char**,int*) ;
 struct xenbus_device_ivars* device_get_ivars (char) ;
 scalar_t__ device_get_state (char) ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int sx_sleep (scalar_t__*,int *,int ,char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 scalar_t__ xen_suspend_cancelled ;
 int xenbus_set_state (char,int ) ;
 int xs_register_watch (TYPE_1__*) ;
 int xs_unregister_watch (TYPE_1__*) ;

int
xenbusb_resume(device_t dev)
{
 device_t *kids;
 struct xenbus_device_ivars *ivars;
 int i, count, error;
 char *statepath;





 if (device_get_children(dev, &kids, &count) == 0) {
  for (i = 0; i < count; i++) {
   if (device_get_state(kids[i]) == DS_NOTPRESENT)
    continue;

   if (xen_suspend_cancelled) {
    DEVICE_RESUME(kids[i]);
    continue;
   }

   ivars = device_get_ivars(kids[i]);

   xs_unregister_watch(&ivars->xd_otherend_watch);
   xenbus_set_state(kids[i], XenbusStateInitialising);





   error = XENBUSB_GET_OTHEREND_NODE(dev, ivars);
   if (error)
    return (error);

   statepath = malloc(ivars->xd_otherend_path_len
       + strlen("/state") + 1, M_XENBUS, M_WAITOK);
   sprintf(statepath, "%s/state", ivars->xd_otherend_path);

   free(ivars->xd_otherend_watch.node, M_XENBUS);
   ivars->xd_otherend_watch.node = statepath;

   DEVICE_RESUME(kids[i]);

   xs_register_watch(&ivars->xd_otherend_watch);
  }
  free(kids, M_TEMP);
 }

 return (0);
}
