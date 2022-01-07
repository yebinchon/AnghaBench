
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {uintptr_t callback_data; int * node; int callback; } ;
struct xbb_softc {TYPE_1__ hotplug_watch; scalar_t__ dev; int hotplug_done; int lock; int io_task; int otherend_id; } ;
struct sbuf {int dummy; } ;
typedef scalar_t__ device_t ;


 int DPRINTF (char*,int *) ;
 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int M_XENBLOCKBACK ;
 int TASK_INIT (int *,int ,int ,struct xbb_softc*) ;
 int XBB_MAX_RING_PAGES ;
 int XST_NIL ;
 int XenbusStateInitWait ;
 int device_get_nameunit (scalar_t__) ;
 struct xbb_softc* device_get_softc (scalar_t__) ;
 scalar_t__ flsl (int ) ;
 int free (int *,int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int * strdup (int ,int ) ;
 int xbb_attach_disk ;
 int xbb_attach_failed (struct xbb_softc*,int,char*,int *) ;
 int xbb_run_queue ;
 int * xenbus_get_node (scalar_t__) ;
 int xenbus_get_otherend_id (scalar_t__) ;
 int xenbus_set_state (scalar_t__,int ) ;
 struct sbuf* xs_join (int *,char*) ;
 int xs_printf (int ,int *,char*,char*,...) ;
 int xs_register_watch (TYPE_1__*) ;

__attribute__((used)) static int
xbb_attach(device_t dev)
{
 struct xbb_softc *xbb;
 int error;
 u_int max_ring_page_order;
 struct sbuf *watch_path;

 DPRINTF("Attaching to %s\n", xenbus_get_node(dev));






 xbb = device_get_softc(dev);
 xbb->dev = dev;
 xbb->otherend_id = xenbus_get_otherend_id(dev);
 TASK_INIT(&xbb->io_task, 0, xbb_run_queue, xbb);
 mtx_init(&xbb->lock, device_get_nameunit(dev), ((void*)0), MTX_DEF);





 error = xs_printf(XST_NIL, xenbus_get_node(xbb->dev),
     "feature-barrier", "1");
 if (error) {
  xbb_attach_failed(xbb, error, "writing %s/feature-barrier",
      xenbus_get_node(xbb->dev));
  return (error);
 }

 error = xs_printf(XST_NIL, xenbus_get_node(xbb->dev),
     "feature-flush-cache", "1");
 if (error) {
  xbb_attach_failed(xbb, error, "writing %s/feature-flush-cache",
      xenbus_get_node(xbb->dev));
  return (error);
 }

 max_ring_page_order = flsl(XBB_MAX_RING_PAGES) - 1;
 error = xs_printf(XST_NIL, xenbus_get_node(xbb->dev),
     "max-ring-page-order", "%u", max_ring_page_order);
 if (error) {
  xbb_attach_failed(xbb, error, "writing %s/max-ring-page-order",
      xenbus_get_node(xbb->dev));
  return (error);
 }





 KASSERT(!xbb->hotplug_done, ("Hotplug scripts already executed"));
 watch_path = xs_join(xenbus_get_node(xbb->dev), "physical-device-path");
 xbb->hotplug_watch.callback_data = (uintptr_t)dev;
 xbb->hotplug_watch.callback = xbb_attach_disk;
 KASSERT(xbb->hotplug_watch.node == ((void*)0), ("watch node already setup"));
 xbb->hotplug_watch.node = strdup(sbuf_data(watch_path), M_XENBLOCKBACK);
 sbuf_delete(watch_path);
 error = xs_register_watch(&xbb->hotplug_watch);
 if (error != 0) {
  xbb_attach_failed(xbb, error, "failed to create watch on %s",
      xbb->hotplug_watch.node);
  free(xbb->hotplug_watch.node, M_XENBLOCKBACK);
  return (error);
 }


 xenbus_set_state(dev, XenbusStateInitWait);

 return (0);
}
