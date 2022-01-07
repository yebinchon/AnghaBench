
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vaddr; } ;
struct pvscsi_softc {int req_ring_num_pages; int cmp_ring_num_pages; int msg_ring_num_pages; int * msg_ring; int dev; int * cmp_ring; int * req_ring; int * rings_state; TYPE_1__ msg_ring_dma; int * msg_ring_ppn; scalar_t__ use_msg; TYPE_1__ cmp_ring_dma; int * cmp_ring_ppn; TYPE_1__ req_ring_dma; int * req_ring_ppn; TYPE_1__ rings_state_dma; int rings_state_ppn; } ;


 int DEBUG_PRINTF (int,int ,char*,int *,...) ;
 int device_printf (int ,char*,int) ;
 int pvscsi_dma_alloc_ppns (struct pvscsi_softc*,TYPE_1__*,int *,int) ;
 int pvscsi_free_rings (struct pvscsi_softc*) ;

__attribute__((used)) static int
pvscsi_allocate_rings(struct pvscsi_softc *sc)
{
 int error;

 error = pvscsi_dma_alloc_ppns(sc, &sc->rings_state_dma,
     &sc->rings_state_ppn, 1);
 if (error) {
  device_printf(sc->dev,
      "Error allocating rings state, error = %d\n", error);
  goto fail;
 }
 sc->rings_state = sc->rings_state_dma.vaddr;

 error = pvscsi_dma_alloc_ppns(sc, &sc->req_ring_dma, sc->req_ring_ppn,
     sc->req_ring_num_pages);
 if (error) {
  device_printf(sc->dev,
      "Error allocating req ring pages, error = %d\n", error);
  goto fail;
 }
 sc->req_ring = sc->req_ring_dma.vaddr;

 error = pvscsi_dma_alloc_ppns(sc, &sc->cmp_ring_dma, sc->cmp_ring_ppn,
     sc->cmp_ring_num_pages);
 if (error) {
  device_printf(sc->dev,
      "Error allocating cmp ring pages, error = %d\n", error);
  goto fail;
 }
 sc->cmp_ring = sc->cmp_ring_dma.vaddr;

 sc->msg_ring = ((void*)0);
 if (sc->use_msg) {
  error = pvscsi_dma_alloc_ppns(sc, &sc->msg_ring_dma,
      sc->msg_ring_ppn, sc->msg_ring_num_pages);
  if (error) {
   device_printf(sc->dev,
       "Error allocating cmp ring pages, error = %d\n",
       error);
   goto fail;
  }
  sc->msg_ring = sc->msg_ring_dma.vaddr;
 }

 DEBUG_PRINTF(1, sc->dev, "rings_state: %p\n", sc->rings_state);
 DEBUG_PRINTF(1, sc->dev, "req_ring: %p - %u pages\n", sc->req_ring,
     sc->req_ring_num_pages);
 DEBUG_PRINTF(1, sc->dev, "cmp_ring: %p - %u pages\n", sc->cmp_ring,
     sc->cmp_ring_num_pages);
 DEBUG_PRINTF(1, sc->dev, "msg_ring: %p - %u pages\n", sc->msg_ring,
     sc->msg_ring_num_pages);

fail:
 if (error) {
  pvscsi_free_rings(sc);
 }
 return (error);
}
