
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xs_watch {scalar_t__ callback_data; } ;
struct xenbusb_softc {int xbs_id_components; int xbs_probe_children; int xbs_dev; } ;
typedef int device_t ;


 int M_XENBUS ;
 unsigned int XS_WATCH_PATH ;
 int device_printf (int ,char*) ;
 int free (char*,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char const*,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int xenbusb_add_device (int ,char*,char*) ;

__attribute__((used)) static void
xenbusb_devices_changed(struct xs_watch *watch, const char **vec,
   unsigned int len)
{
 struct xenbusb_softc *xbs;
 device_t dev;
 char *node;
 char *type;
 char *id;
 char *p;
 u_int component;

 xbs = (struct xenbusb_softc *)watch->callback_data;
 dev = xbs->xbs_dev;

 if (len <= XS_WATCH_PATH) {
  device_printf(dev, "xenbusb_devices_changed: "
         "Short Event Data.\n");
  return;
 }

 node = strdup(vec[XS_WATCH_PATH], M_XENBUS);
 p = strchr(node, '/');
 if (p == ((void*)0))
  goto out;
 *p = 0;
 type = p + 1;

 p = strchr(type, '/');
 if (p == ((void*)0))
  goto out;
 *p++ = 0;







 id = p;
 for (component = 0; component < xbs->xbs_id_components; component++) {
  p = strchr(p, '/');
  if (p == ((void*)0))
   break;
  p++;
 }
 if (p != ((void*)0))
  *p = 0;

 if (*id != 0 && component >= xbs->xbs_id_components - 1) {
  xenbusb_add_device(xbs->xbs_dev, type, id);
  taskqueue_enqueue(taskqueue_thread, &xbs->xbs_probe_children);
 }
out:
 free(node, M_XENBUS);
}
