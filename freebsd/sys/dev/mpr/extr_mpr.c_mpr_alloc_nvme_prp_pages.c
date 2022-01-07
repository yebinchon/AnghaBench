
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mpr_softc {int maxio; int prp_buffer_size; int prp_pages_free_lowwater; scalar_t__ prp_page_busaddr; scalar_t__ prp_pages; struct mpr_prp_page* prps; int prp_page_map; int prp_page_dmat; int mpr_parent_dmat; } ;
struct mpr_prp_page {scalar_t__ prp_page_busaddr; scalar_t__* prp_page; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int MPR_ERROR ;
 int M_MPR ;
 int M_WAITOK ;
 int M_ZERO ;
 int NVME_QDEPTH ;
 int PAGE_SIZE ;
 int PRP_ENTRY_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,int,int ,scalar_t__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (scalar_t__,int) ;
 struct mpr_prp_page* malloc (int,int ,int) ;
 int mpr_dprint (struct mpr_softc*,int ,char*) ;
 int mpr_free_prp_page (struct mpr_softc*,struct mpr_prp_page*) ;
 int mpr_memaddr_cb ;

__attribute__((used)) static int
mpr_alloc_nvme_prp_pages(struct mpr_softc *sc)
{
 int PRPs_per_page, PRPs_required, pages_required;
 int rsize, i;
 struct mpr_prp_page *prp_page;
 PRPs_required = sc->maxio / PAGE_SIZE;
 PRPs_per_page = (PAGE_SIZE / PRP_ENTRY_SIZE) - 1;
 pages_required = (PRPs_required / PRPs_per_page) + 1;

 sc->prp_buffer_size = PAGE_SIZE * pages_required;
 rsize = sc->prp_buffer_size * NVME_QDEPTH;
 if (bus_dma_tag_create( sc->mpr_parent_dmat,
    4, 0,
    BUS_SPACE_MAXADDR_32BIT,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    rsize,
    1,
    rsize,
    0,
    ((void*)0), ((void*)0),
    &sc->prp_page_dmat)) {
  mpr_dprint(sc, MPR_ERROR, "Cannot allocate NVMe PRP DMA "
      "tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->prp_page_dmat, (void **)&sc->prp_pages,
     BUS_DMA_NOWAIT, &sc->prp_page_map)) {
  mpr_dprint(sc, MPR_ERROR, "Cannot allocate NVMe PRP memory\n");
  return (ENOMEM);
 }
 bzero(sc->prp_pages, rsize);
 bus_dmamap_load(sc->prp_page_dmat, sc->prp_page_map, sc->prp_pages,
     rsize, mpr_memaddr_cb, &sc->prp_page_busaddr, 0);

 sc->prps = malloc(sizeof(struct mpr_prp_page) * NVME_QDEPTH, M_MPR,
     M_WAITOK | M_ZERO);
 for (i = 0; i < NVME_QDEPTH; i++) {
  prp_page = &sc->prps[i];
  prp_page->prp_page = (uint64_t *)(sc->prp_pages +
      i * sc->prp_buffer_size);
  prp_page->prp_page_busaddr = (uint64_t)(sc->prp_page_busaddr +
      i * sc->prp_buffer_size);
  mpr_free_prp_page(sc, prp_page);
  sc->prp_pages_free_lowwater++;
 }

 return (0);
}
