
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_watch {int * node; scalar_t__ callback_data; } ;
struct xbb_softc {int hotplug_done; scalar_t__ dev; int * io_taskqueue; int sector_size; void* xbb_stats_in; void* xbb_stats; int * dev_name; int flags; int * dev_mode; int * dev_type; } ;
typedef scalar_t__ device_t ;


 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_OTHER ;
 int DEVSTAT_TYPE_DIRECT ;
 int DEVSTAT_TYPE_IF_OTHER ;
 int M_NOWAIT ;
 int M_XENBLOCKBACK ;
 int PWAIT ;
 int XBBF_READ_ONLY ;
 int XST_NIL ;
 scalar_t__ XenbusStateInitialised ;
 int device_get_nameunit (scalar_t__) ;
 struct xbb_softc* device_get_softc (scalar_t__) ;
 int device_get_unit (scalar_t__) ;
 void* devstat_new_entry (char*,int ,int ,int ,int,int ) ;
 int free (int *,int ) ;
 int * strchr (int *,char) ;
 int * taskqueue_create_fast (int ,int ,int ,int **) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int xbb_attach_failed (struct xbb_softc*,int,char*,...) ;
 int xbb_connect (struct xbb_softc*) ;
 int xbb_open_backend (struct xbb_softc*) ;
 int xbb_setup_sysctl (struct xbb_softc*) ;
 int * xenbus_get_node (scalar_t__) ;
 int * xenbus_get_otherend_path (scalar_t__) ;
 scalar_t__ xenbus_get_otherend_state (scalar_t__) ;
 int xs_gather (int ,int *,char*,int *,int **,int *) ;
 int xs_printf (int ,int *,char*,char*) ;
 int xs_unregister_watch (struct xs_watch*) ;

__attribute__((used)) static void
xbb_attach_disk(struct xs_watch *watch, const char **vec, unsigned int len)
{
 device_t dev;
 struct xbb_softc *xbb;
 int error;

 dev = (device_t) watch->callback_data;
 xbb = device_get_softc(dev);

 error = xs_gather(XST_NIL, xenbus_get_node(dev), "physical-device-path",
     ((void*)0), &xbb->dev_name, ((void*)0));
 if (error != 0)
  return;

 xs_unregister_watch(watch);
 free(watch->node, M_XENBLOCKBACK);
 watch->node = ((void*)0);


 error = xs_gather(XST_NIL, xenbus_get_otherend_path(xbb->dev),
     "device-type", ((void*)0), &xbb->dev_type,
     ((void*)0));
 if (error != 0)
  xbb->dev_type = ((void*)0);

 error = xs_gather(XST_NIL, xenbus_get_node(dev),
                          "mode", ((void*)0), &xbb->dev_mode,
                          ((void*)0));
 if (error != 0) {
  xbb_attach_failed(xbb, error, "reading backend fields at %s",
      xenbus_get_node(dev));
                return;
        }


 if (strchr(xbb->dev_mode, 'w') == ((void*)0))
  xbb->flags |= XBBF_READ_ONLY;





 error = xbb_open_backend(xbb);
 if (error != 0) {
  xbb_attach_failed(xbb, error, "Unable to open %s",
      xbb->dev_name);
  return;
 }


 xbb->xbb_stats = devstat_new_entry("xbb", device_get_unit(xbb->dev),
        xbb->sector_size,
        DEVSTAT_ALL_SUPPORTED,
        DEVSTAT_TYPE_DIRECT
      | DEVSTAT_TYPE_IF_OTHER,
        DEVSTAT_PRIORITY_OTHER);

 xbb->xbb_stats_in = devstat_new_entry("xbbi", device_get_unit(xbb->dev),
           xbb->sector_size,
           DEVSTAT_ALL_SUPPORTED,
           DEVSTAT_TYPE_DIRECT
         | DEVSTAT_TYPE_IF_OTHER,
           DEVSTAT_PRIORITY_OTHER);



 xbb_setup_sysctl(xbb);





 xbb->io_taskqueue = taskqueue_create_fast(device_get_nameunit(dev),
        M_NOWAIT,
        taskqueue_thread_enqueue,
                  &xbb->io_taskqueue);
 if (xbb->io_taskqueue == ((void*)0)) {
  xbb_attach_failed(xbb, error, "Unable to create taskqueue");
  return;
 }

 taskqueue_start_threads(&xbb->io_taskqueue,
                   1,
                PWAIT,

    "%s taskq", device_get_nameunit(dev));


 error = xs_printf(XST_NIL, xenbus_get_node(xbb->dev),
     "hotplug-status", "connected");
 if (error) {
  xbb_attach_failed(xbb, error, "writing %s/hotplug-status",
      xenbus_get_node(xbb->dev));
  return;
 }

 xbb->hotplug_done = 1;


 if (xenbus_get_otherend_state(xbb->dev) == XenbusStateInitialised)
  xbb_connect(xbb);
}
