
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {int max_reqlist_segments; int max_request_segments; int max_requests; int max_reqlist_size; int dev; int flags; int hotplug_done; } ;


 int MIN (int,int ) ;
 int PAGE_SIZE ;
 int XBBF_SHUTDOWN ;
 int XBB_MAX_SEGMENTS_PER_REQLIST ;
 int XenbusStateConnected ;
 scalar_t__ XenbusStateInitWait ;
 int xbb_alloc_communication_mem (struct xbb_softc*) ;
 int xbb_alloc_request_lists (struct xbb_softc*) ;
 int xbb_alloc_requests (struct xbb_softc*) ;
 scalar_t__ xbb_collect_frontend_info (struct xbb_softc*) ;
 int xbb_connect_ring (struct xbb_softc*) ;
 int xbb_disconnect (struct xbb_softc*) ;
 scalar_t__ xbb_publish_backend_info (struct xbb_softc*) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 scalar_t__ xenbus_get_state (int ) ;
 int xenbus_set_state (int ,int ) ;

__attribute__((used)) static void
xbb_connect(struct xbb_softc *xbb)
{
 int error;

 if (!xbb->hotplug_done ||
     (xenbus_get_state(xbb->dev) != XenbusStateInitWait) ||
     (xbb_collect_frontend_info(xbb) != 0))
  return;

 xbb->flags &= ~XBBF_SHUTDOWN;






 xbb->max_reqlist_segments = MIN(xbb->max_request_segments *
  xbb->max_requests, XBB_MAX_SEGMENTS_PER_REQLIST);





 xbb->max_reqlist_size = xbb->max_reqlist_segments * PAGE_SIZE;


 error = xbb_alloc_communication_mem(xbb);
 if (error != 0) {
  xenbus_dev_fatal(xbb->dev, error,
     "Unable to allocate communication memory");
  return;
 }

 error = xbb_alloc_requests(xbb);
 if (error != 0) {

  return;
 }

 error = xbb_alloc_request_lists(xbb);
 if (error != 0) {

  return;
 }




 error = xbb_connect_ring(xbb);
 if (error != 0) {

  return;
 }

 if (xbb_publish_backend_info(xbb) != 0) {





  (void)xbb_disconnect(xbb);
  return;
 }


 xenbus_set_state(xbb->dev, XenbusStateConnected);
}
