
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; int * rdesc; int * rdesc_dmat; int * rdesc_map; int * rdata; int * mbuf_dmat; int * mbuf_map; } ;
struct xgbe_prv_data {int dummy; } ;


 int M_AXGBE ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,unsigned int) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int free (int *,int ) ;
 int xgbe_unmap_rdata (struct xgbe_prv_data*,struct xgbe_ring_data*) ;

__attribute__((used)) static void xgbe_free_ring(struct xgbe_prv_data *pdata,
      struct xgbe_ring *ring)
{
 struct xgbe_ring_data *rdata;
 unsigned int i;

 if (!ring)
  return;

 bus_dmamap_destroy(ring->mbuf_dmat, ring->mbuf_map);
 bus_dma_tag_destroy(ring->mbuf_dmat);

 ring->mbuf_map = ((void*)0);
 ring->mbuf_dmat = ((void*)0);

 if (ring->rdata) {
  for (i = 0; i < ring->rdesc_count; i++) {
   rdata = XGBE_GET_DESC_DATA(ring, i);
   xgbe_unmap_rdata(pdata, rdata);
  }

  free(ring->rdata, M_AXGBE);
  ring->rdata = ((void*)0);
 }

 bus_dmamap_unload(ring->rdesc_dmat, ring->rdesc_map);
 bus_dmamem_free(ring->rdesc_dmat, ring->rdesc, ring->rdesc_map);
 bus_dma_tag_destroy(ring->rdesc_dmat);

 ring->rdesc_map = ((void*)0);
 ring->rdesc_dmat = ((void*)0);
 ring->rdesc = ((void*)0);
}
