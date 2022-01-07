
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct xbb_xen_reqlist {struct xbb_xen_reqlist* gnt_handles; struct xbb_xen_reqlist* bounce; } ;
struct TYPE_2__ {size_t ring_pages; int * handle; int * bus_addr; scalar_t__ gnt_addr; } ;
struct xbb_softc {int flags; scalar_t__ active_request_count; int max_requests; struct xbb_xen_reqlist* request_lists; struct xbb_xen_reqlist* requests; TYPE_1__ ring_config; int lock; int io_task; int io_taskqueue; int xen_intr_handle; } ;
struct gnttab_unmap_grant_ref {int handle; int dev_bus_addr; scalar_t__ host_addr; } ;


 int DPRINTF (char*) ;
 int EAGAIN ;
 int GNTTABOP_unmap_grant_ref ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,size_t) ;
 int M_XENBLOCKBACK ;
 size_t PAGE_SIZE ;
 int XBBF_RING_CONNECTED ;
 int XBB_MAX_RING_PAGES ;
 int free (struct xbb_xen_reqlist*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int) ;
 int taskqueue_drain (int ,int *) ;
 int xbb_free_communication_mem (struct xbb_softc*) ;
 int xen_intr_unbind (int *) ;

__attribute__((used)) static int
xbb_disconnect(struct xbb_softc *xbb)
{
 struct gnttab_unmap_grant_ref ops[XBB_MAX_RING_PAGES];
 struct gnttab_unmap_grant_ref *op;
 u_int ring_idx;
 int error;

 DPRINTF("\n");

 if ((xbb->flags & XBBF_RING_CONNECTED) == 0)
  return (0);

 mtx_unlock(&xbb->lock);
 xen_intr_unbind(&xbb->xen_intr_handle);
 taskqueue_drain(xbb->io_taskqueue, &xbb->io_task);
 mtx_lock(&xbb->lock);





 if (xbb->active_request_count != 0)
  return (EAGAIN);

 for (ring_idx = 0, op = ops;
      ring_idx < xbb->ring_config.ring_pages;
      ring_idx++, op++) {

  op->host_addr = xbb->ring_config.gnt_addr
            + (ring_idx * PAGE_SIZE);
  op->dev_bus_addr = xbb->ring_config.bus_addr[ring_idx];
  op->handle = xbb->ring_config.handle[ring_idx];
 }

 error = HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, ops,
       xbb->ring_config.ring_pages);
 if (error != 0)
  panic("Grant table op failed (%d)", error);

 xbb_free_communication_mem(xbb);

 if (xbb->requests != ((void*)0)) {
  free(xbb->requests, M_XENBLOCKBACK);
  xbb->requests = ((void*)0);
 }

 if (xbb->request_lists != ((void*)0)) {
  struct xbb_xen_reqlist *reqlist;
  int i;


  for (i = 0, reqlist = xbb->request_lists;
       i < xbb->max_requests; i++, reqlist++){






   if (reqlist->gnt_handles != ((void*)0)) {
    free(reqlist->gnt_handles, M_XENBLOCKBACK);
    reqlist->gnt_handles = ((void*)0);
   }
  }
  free(xbb->request_lists, M_XENBLOCKBACK);
  xbb->request_lists = ((void*)0);
 }

 xbb->flags &= ~XBBF_RING_CONNECTED;
 return (0);
}
