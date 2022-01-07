
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenbusb_softc {int xbs_lock; int xbs_connecting_children; int xbs_node; } ;
struct TYPE_4__ {uintptr_t callback_data; int callback; void* node; } ;
struct TYPE_3__ {char* node; uintptr_t callback_data; int callback; } ;
struct xenbus_device_ivars {int xd_state; char* xd_otherend_path; int * xd_dev; TYPE_2__ xd_local_watch; void* xd_node; TYPE_1__ xd_otherend_watch; int xd_otherend_path_len; void* xd_type; int xd_node_len; int xd_flags; int xd_lock; } ;
struct sbuf {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef int * device_t ;


 int ENXIO ;
 int M_WAITOK ;
 int M_XENBUS ;
 int M_ZERO ;
 int XDF_CONNECTING ;
 int XENBUSB_GET_OTHEREND_NODE (int *,struct xenbus_device_ivars*) ;
 int XST_NIL ;
 int XenbusStateInitialising ;
 int * device_add_child (int *,int *,int) ;
 struct xenbusb_softc* device_get_softc (int *) ;
 int device_set_ivars (int *,struct xenbus_device_ivars*) ;
 void* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*,...) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,int ,char const*,char const*) ;
 int sprintf (char*,char*,char*) ;
 void* strdup (char const*,int ) ;
 int strlen (char*) ;
 int sx_init (int *,char*) ;
 int xenbus_read_driver_state (char*) ;
 int * xenbusb_device_exists (int *,char*) ;
 int xenbusb_free_child_ivars (struct xenbus_device_ivars*) ;
 int xenbusb_local_watch_cb ;
 int xenbusb_otherend_watch_cb ;
 scalar_t__ xs_exists (int ,char*,char*) ;

int
xenbusb_add_device(device_t dev, const char *type, const char *id)
{
 struct xenbusb_softc *xbs;
 struct sbuf *devpath_sbuf;
 char *devpath;
 struct xenbus_device_ivars *ivars;
 int error;

 xbs = device_get_softc(dev);
 devpath_sbuf = sbuf_new_auto();
 sbuf_printf(devpath_sbuf, "%s/%s/%s", xbs->xbs_node, type, id);
 sbuf_finish(devpath_sbuf);
 devpath = sbuf_data(devpath_sbuf);

 ivars = malloc(sizeof(*ivars), M_XENBUS, M_ZERO|M_WAITOK);
 error = ENXIO;

 if (xs_exists(XST_NIL, devpath, "") != 0) {
  device_t child;
  enum xenbus_state state;
  char *statepath;

  child = xenbusb_device_exists(dev, devpath);
  if (child != ((void*)0)) {



   error = 0;
   goto out;
  }

  state = xenbus_read_driver_state(devpath);
  if (state != XenbusStateInitialising) {





   printf("xenbusb_add_device: Device %s ignored. "
          "State %d\n", devpath, state);
   error = 0;
   goto out;
  }

  sx_init(&ivars->xd_lock, "xdlock");
  ivars->xd_flags = XDF_CONNECTING;
  ivars->xd_node = strdup(devpath, M_XENBUS);
  ivars->xd_node_len = strlen(devpath);
  ivars->xd_type = strdup(type, M_XENBUS);
  ivars->xd_state = XenbusStateInitialising;

  error = XENBUSB_GET_OTHEREND_NODE(dev, ivars);
  if (error) {
   printf("xenbus_update_device: %s no otherend id\n",
       devpath);
   goto out;
  }

  statepath = malloc(ivars->xd_otherend_path_len
      + strlen("/state") + 1, M_XENBUS, M_WAITOK);
  sprintf(statepath, "%s/state", ivars->xd_otherend_path);
  ivars->xd_otherend_watch.node = statepath;
  ivars->xd_otherend_watch.callback = xenbusb_otherend_watch_cb;
  ivars->xd_otherend_watch.callback_data = (uintptr_t)ivars;

  ivars->xd_local_watch.node = ivars->xd_node;
  ivars->xd_local_watch.callback = xenbusb_local_watch_cb;
  ivars->xd_local_watch.callback_data = (uintptr_t)ivars;

  mtx_lock(&xbs->xbs_lock);
  xbs->xbs_connecting_children++;
  mtx_unlock(&xbs->xbs_lock);

  child = device_add_child(dev, ((void*)0), -1);
  ivars->xd_dev = child;
  device_set_ivars(child, ivars);
 }

out:
 sbuf_delete(devpath_sbuf);
 if (error != 0)
  xenbusb_free_child_ivars(ivars);

 return (error);
}
