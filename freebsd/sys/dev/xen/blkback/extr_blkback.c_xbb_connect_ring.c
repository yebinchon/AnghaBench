
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {size_t va; size_t ring_pages; size_t gnt_addr; int evtchn; int * bus_addr; int * handle; int * ring_ref; } ;
struct TYPE_3__ {int x86_64; int x86_32; int native; } ;
struct xbb_softc {int flags; size_t kva; size_t kva_size; size_t gnt_base_addr; int abi; int dev; int xen_intr_handle; TYPE_2__ ring_config; int otherend_id; TYPE_1__ rings; } ;
struct gnttab_map_grant_ref {size_t host_addr; scalar_t__ status; int dev_bus_addr; int handle; int dom; int ref; int flags; } ;
typedef int blkif_x86_64_sring_t ;
typedef int blkif_x86_32_sring_t ;
typedef int blkif_sring_t ;


 int BACK_RING_INIT (int *,int *,size_t) ;



 int DPRINTF (char*) ;
 int EACCES ;
 int GNTMAP_host_map ;
 int GNTTABOP_map_grant_ref ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_map_grant_ref*,size_t) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 size_t PAGE_SIZE ;
 int XBBF_RING_CONNECTED ;
 int XBB_MAX_RING_PAGES ;
 int panic (char*,...) ;
 int xbb_disconnect (struct xbb_softc*) ;
 int xbb_filter ;
 int xen_intr_bind_remote_port (int ,int ,int ,int ,int *,struct xbb_softc*,int,int *) ;
 int xenbus_dev_fatal (int ,int,char*,...) ;

__attribute__((used)) static int
xbb_connect_ring(struct xbb_softc *xbb)
{
 struct gnttab_map_grant_ref gnts[XBB_MAX_RING_PAGES];
 struct gnttab_map_grant_ref *gnt;
 u_int ring_idx;
 int error;

 if ((xbb->flags & XBBF_RING_CONNECTED) != 0)
  return (0);





 xbb->ring_config.va = xbb->kva
       + (xbb->kva_size
        - (xbb->ring_config.ring_pages * PAGE_SIZE));
 xbb->ring_config.gnt_addr = xbb->gnt_base_addr
      + (xbb->kva_size
       - (xbb->ring_config.ring_pages * PAGE_SIZE));

 for (ring_idx = 0, gnt = gnts;
      ring_idx < xbb->ring_config.ring_pages;
      ring_idx++, gnt++) {

  gnt->host_addr = xbb->ring_config.gnt_addr
          + (ring_idx * PAGE_SIZE);
  gnt->flags = GNTMAP_host_map;
  gnt->ref = xbb->ring_config.ring_ref[ring_idx];
  gnt->dom = xbb->otherend_id;
 }

 error = HYPERVISOR_grant_table_op(GNTTABOP_map_grant_ref, gnts,
       xbb->ring_config.ring_pages);
 if (error)
  panic("blkback: Ring page grant table op failed (%d)", error);

 for (ring_idx = 0, gnt = gnts;
      ring_idx < xbb->ring_config.ring_pages;
      ring_idx++, gnt++) {
  if (gnt->status != 0) {
   xbb->ring_config.va = 0;
   xenbus_dev_fatal(xbb->dev, EACCES,
      "Ring shared page mapping failed. "
      "Status %d.", gnt->status);
   return (EACCES);
  }
  xbb->ring_config.handle[ring_idx] = gnt->handle;
  xbb->ring_config.bus_addr[ring_idx] = gnt->dev_bus_addr;
 }


 switch (xbb->abi) {
 case 130:
 {
  blkif_sring_t *sring;
  sring = (blkif_sring_t *)xbb->ring_config.va;
  BACK_RING_INIT(&xbb->rings.native, sring,
          xbb->ring_config.ring_pages * PAGE_SIZE);
  break;
 }
 case 129:
 {
  blkif_x86_32_sring_t *sring_x86_32;
  sring_x86_32 = (blkif_x86_32_sring_t *)xbb->ring_config.va;
  BACK_RING_INIT(&xbb->rings.x86_32, sring_x86_32,
          xbb->ring_config.ring_pages * PAGE_SIZE);
  break;
 }
 case 128:
 {
  blkif_x86_64_sring_t *sring_x86_64;
  sring_x86_64 = (blkif_x86_64_sring_t *)xbb->ring_config.va;
  BACK_RING_INIT(&xbb->rings.x86_64, sring_x86_64,
          xbb->ring_config.ring_pages * PAGE_SIZE);
  break;
 }
 default:
  panic("Unexpected blkif protocol ABI.");
 }

 xbb->flags |= XBBF_RING_CONNECTED;

 error = xen_intr_bind_remote_port(xbb->dev,
       xbb->otherend_id,
       xbb->ring_config.evtchn,
       xbb_filter,
                          ((void*)0),
              xbb,
       INTR_TYPE_BIO | INTR_MPSAFE,
       &xbb->xen_intr_handle);
 if (error) {
  (void)xbb_disconnect(xbb);
  xenbus_dev_fatal(xbb->dev, error, "binding event channel");
  return (error);
 }

 DPRINTF("rings connected!\n");

 return 0;
}
