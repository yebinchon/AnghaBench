
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {uintptr_t xbd_ring_pages; int xbd_dev; int xen_intr_handle; int * xbd_ring_ref; int xbd_ring; } ;
typedef int ring_ref_name ;
typedef int blkif_sring_t ;


 int ENOMEM ;
 int FRONT_RING_INIT (int *,int *,uintptr_t) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_NOWAIT ;
 int M_XENBLOCKFRONT ;
 int M_ZERO ;
 int PAGE_SHIFT ;
 uintptr_t PAGE_SIZE ;
 int SHARED_RING_INIT (int *) ;
 int XST_NIL ;
 int * malloc (uintptr_t,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int vtophys (uintptr_t) ;
 int xbd_int ;
 int xen_intr_alloc_and_bind_local_port (int ,int ,int *,int ,struct xbd_softc*,int,int *) ;
 int xenbus_dev_fatal (int ,int,char*,...) ;
 int xenbus_get_node (int ) ;
 int xenbus_get_otherend_id (int ) ;
 int xenbus_grant_ring (int ,int,int *) ;
 int xs_printf (int ,int ,char*,char*,int ) ;

__attribute__((used)) static int
xbd_alloc_ring(struct xbd_softc *sc)
{
 blkif_sring_t *sring;
 uintptr_t sring_page_addr;
 int error;
 int i;

 sring = malloc(sc->xbd_ring_pages * PAGE_SIZE, M_XENBLOCKFRONT,
     M_NOWAIT|M_ZERO);
 if (sring == ((void*)0)) {
  xenbus_dev_fatal(sc->xbd_dev, ENOMEM, "allocating shared ring");
  return (ENOMEM);
 }
 SHARED_RING_INIT(sring);
 FRONT_RING_INIT(&sc->xbd_ring, sring, sc->xbd_ring_pages * PAGE_SIZE);

 for (i = 0, sring_page_addr = (uintptr_t)sring;
      i < sc->xbd_ring_pages;
      i++, sring_page_addr += PAGE_SIZE) {

  error = xenbus_grant_ring(sc->xbd_dev,
      (vtophys(sring_page_addr) >> PAGE_SHIFT),
      &sc->xbd_ring_ref[i]);
  if (error) {
   xenbus_dev_fatal(sc->xbd_dev, error,
       "granting ring_ref(%d)", i);
   return (error);
  }
 }
 if (sc->xbd_ring_pages == 1) {
  error = xs_printf(XST_NIL, xenbus_get_node(sc->xbd_dev),
      "ring-ref", "%u", sc->xbd_ring_ref[0]);
  if (error) {
   xenbus_dev_fatal(sc->xbd_dev, error,
       "writing %s/ring-ref",
       xenbus_get_node(sc->xbd_dev));
   return (error);
  }
 } else {
  for (i = 0; i < sc->xbd_ring_pages; i++) {
   char ring_ref_name[]= "ring_refXX";

   snprintf(ring_ref_name, sizeof(ring_ref_name),
       "ring-ref%u", i);
   error = xs_printf(XST_NIL, xenbus_get_node(sc->xbd_dev),
        ring_ref_name, "%u", sc->xbd_ring_ref[i]);
   if (error) {
    xenbus_dev_fatal(sc->xbd_dev, error,
        "writing %s/%s",
        xenbus_get_node(sc->xbd_dev),
        ring_ref_name);
    return (error);
   }
  }
 }

 error = xen_intr_alloc_and_bind_local_port(sc->xbd_dev,
     xenbus_get_otherend_id(sc->xbd_dev), ((void*)0), xbd_int, sc,
     INTR_TYPE_BIO | INTR_MPSAFE, &sc->xen_intr_handle);
 if (error) {
  xenbus_dev_fatal(sc->xbd_dev, error,
      "xen_intr_alloc_and_bind_local_port failed");
  return (error);
 }

 return (0);
}
