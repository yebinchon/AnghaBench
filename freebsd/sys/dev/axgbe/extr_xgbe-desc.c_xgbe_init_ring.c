
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_desc {int dummy; } ;
struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; int mbuf_map; int mbuf_dmat; int rdata; int rdesc_dmat; int rdesc_map; int rdesc; int rdesc_paddr; } ;
struct xgbe_prv_data {int dmat; scalar_t__ coherent; } ;
typedef unsigned int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int DBGPR (char*) ;
 int M_AXGBE ;
 int M_WAITOK ;
 int M_ZERO ;
 unsigned int XGBE_TX_MAX_BUF_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,unsigned int,unsigned int,unsigned int,int,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,unsigned int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int malloc (unsigned int,int ,int) ;
 int printf (char*,...) ;
 int xgbe_ring_dmamap_cb ;

__attribute__((used)) static int xgbe_init_ring(struct xgbe_prv_data *pdata,
     struct xgbe_ring *ring, unsigned int rdesc_count)
{
 bus_size_t len;
 int err, flags;

 DBGPR("-->xgbe_init_ring\n");

 if (!ring)
  return 0;

 flags = 0;
 if (pdata->coherent)
  flags = BUS_DMA_COHERENT;


 ring->rdesc_count = rdesc_count;
 len = sizeof(struct xgbe_ring_desc) * rdesc_count;
 err = bus_dma_tag_create(pdata->dmat, 512, 0, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), len, 1, len, flags, ((void*)0), ((void*)0),
     &ring->rdesc_dmat);
 if (err != 0) {
  printf("Unable to create the DMA tag: %d\n", err);
  return -err;
 }

 err = bus_dmamem_alloc(ring->rdesc_dmat, (void **)&ring->rdesc,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT, &ring->rdesc_map);
 if (err != 0) {
  bus_dma_tag_destroy(ring->rdesc_dmat);
  printf("Unable to allocate DMA memory: %d\n", err);
  return -err;
 }
 err = bus_dmamap_load(ring->rdesc_dmat, ring->rdesc_map, ring->rdesc,
     len, xgbe_ring_dmamap_cb, &ring->rdesc_paddr, 0);
 if (err != 0) {
  bus_dmamem_free(ring->rdesc_dmat, ring->rdesc, ring->rdesc_map);
  bus_dma_tag_destroy(ring->rdesc_dmat);
  printf("Unable to load DMA memory\n");
  return -err;
 }


 ring->rdata = malloc(rdesc_count * sizeof(struct xgbe_ring_data),
     M_AXGBE, M_WAITOK | M_ZERO);


 err = bus_dma_tag_create(pdata->dmat, 1, 0, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), XGBE_TX_MAX_BUF_SIZE * rdesc_count,
     rdesc_count, XGBE_TX_MAX_BUF_SIZE, flags, ((void*)0), ((void*)0),
     &ring->mbuf_dmat);
 if (err != 0)
  return -err;

 err = bus_dmamap_create(ring->mbuf_dmat, 0, &ring->mbuf_map);
 if (err != 0)
  return -err;

 DBGPR("<--xgbe_init_ring\n");

 return 0;
}
