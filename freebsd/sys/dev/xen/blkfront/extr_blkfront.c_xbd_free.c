
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_max_requests; int xbd_max_request_indirectpages; int xen_intr_handle; int xbd_io_dmat; struct xbd_command* xbd_shadow; int xbd_io_lock; int xbd_state; } ;
struct xbd_command {int cm_map; int * cm_indirectionpages; int * cm_indirectionrefs; struct xbd_command* cm_sg_refs; } ;


 int M_XENBLOCKFRONT ;
 int PAGE_SIZE ;
 int XBD_Q_COMPLETE ;
 int XBD_Q_FREE ;
 int XBD_Q_READY ;
 int XBD_STATE_DISCONNECTED ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int contigfree (int *,int,int ) ;
 int free (struct xbd_command*,int ) ;
 int gnttab_end_foreign_access_references (int,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xbd_free_ring (struct xbd_softc*) ;
 int xbd_initq_cm (struct xbd_softc*,int ) ;
 int xen_intr_unbind (int *) ;

__attribute__((used)) static void
xbd_free(struct xbd_softc *sc)
{
 int i;


 mtx_lock(&sc->xbd_io_lock);
 sc->xbd_state = XBD_STATE_DISCONNECTED;
 mtx_unlock(&sc->xbd_io_lock);


 xbd_free_ring(sc);
 if (sc->xbd_shadow) {

  for (i = 0; i < sc->xbd_max_requests; i++) {
   struct xbd_command *cm;

   cm = &sc->xbd_shadow[i];
   if (cm->cm_sg_refs != ((void*)0)) {
    free(cm->cm_sg_refs, M_XENBLOCKFRONT);
    cm->cm_sg_refs = ((void*)0);
   }

   if (cm->cm_indirectionpages != ((void*)0)) {
    gnttab_end_foreign_access_references(
        sc->xbd_max_request_indirectpages,
        &cm->cm_indirectionrefs[0]);
    contigfree(cm->cm_indirectionpages, PAGE_SIZE *
        sc->xbd_max_request_indirectpages,
        M_XENBLOCKFRONT);
    cm->cm_indirectionpages = ((void*)0);
   }

   bus_dmamap_destroy(sc->xbd_io_dmat, cm->cm_map);
  }
  free(sc->xbd_shadow, M_XENBLOCKFRONT);
  sc->xbd_shadow = ((void*)0);

  bus_dma_tag_destroy(sc->xbd_io_dmat);

  xbd_initq_cm(sc, XBD_Q_FREE);
  xbd_initq_cm(sc, XBD_Q_READY);
  xbd_initq_cm(sc, XBD_Q_COMPLETE);
 }

 xen_intr_unbind(&sc->xen_intr_handle);

}
