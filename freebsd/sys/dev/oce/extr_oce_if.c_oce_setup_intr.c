
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rdma_flags; int roce_intr_count; int flags; int intr_count; int dev; int nwqs; scalar_t__ nrqs; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int MAX (scalar_t__,int ) ;
 int OCE_FLAGS_MSIX_CAPABLE ;
 int OCE_FLAGS_USING_MSIX ;
 int OCE_RDMA_FLAG_SUPPORTED ;
 int OCE_RDMA_VECTORS ;
 int device_printf (int ,char*) ;
 scalar_t__ is_rss_enabled (TYPE_1__*) ;
 int oce_alloc_intr (TYPE_1__*,int,int ) ;
 int oce_intr ;
 int oce_intr_free (TYPE_1__*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_release_msi (int ) ;
 int update_queues_got (TYPE_1__*) ;

__attribute__((used)) static int
oce_setup_intr(POCE_SOFTC sc)
{
 int rc = 0, use_intx = 0;
 int vector = 0, req_vectors = 0;
 int tot_req_vectors, tot_vectors;

 if (is_rss_enabled(sc))
  req_vectors = MAX((sc->nrqs - 1), sc->nwqs);
 else
  req_vectors = 1;

 tot_req_vectors = req_vectors;
 if (sc->rdma_flags & OCE_RDMA_FLAG_SUPPORTED) {
   if (req_vectors > 1) {
     tot_req_vectors += OCE_RDMA_VECTORS;
     sc->roce_intr_count = OCE_RDMA_VECTORS;
   }
 }

        if (sc->flags & OCE_FLAGS_MSIX_CAPABLE) {
  sc->intr_count = req_vectors;
                tot_vectors = tot_req_vectors;
  rc = pci_alloc_msix(sc->dev, &tot_vectors);
  if (rc != 0) {
   use_intx = 1;
   pci_release_msi(sc->dev);
  } else {
    if (sc->rdma_flags & OCE_RDMA_FLAG_SUPPORTED) {
      if (tot_vectors < tot_req_vectors) {
        if (sc->intr_count < (2 * OCE_RDMA_VECTORS)) {
   sc->roce_intr_count = (tot_vectors / 2);
        }
        sc->intr_count = tot_vectors - sc->roce_intr_count;
      }
    } else {
      sc->intr_count = tot_vectors;
    }
        sc->flags |= OCE_FLAGS_USING_MSIX;
  }
 } else
  use_intx = 1;

 if (use_intx)
  sc->intr_count = 1;


 update_queues_got(sc);

 if (use_intx) {
  device_printf(sc->dev, "Using legacy interrupt\n");
  rc = oce_alloc_intr(sc, vector, oce_intr);
  if (rc)
   goto error;
 } else {
  for (; vector < sc->intr_count; vector++) {
   rc = oce_alloc_intr(sc, vector, oce_intr);
   if (rc)
    goto error;
  }
 }

 return 0;
error:
 oce_intr_free(sc);
 return rc;
}
