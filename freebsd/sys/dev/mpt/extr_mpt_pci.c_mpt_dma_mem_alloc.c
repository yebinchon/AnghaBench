
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct mpt_softc {int reply_phys; int reply; int reply_dmap; int reply_dmat; int parent_dmat; int dev; int * request_pool; } ;
struct mpt_map_info {int phys; scalar_t__ error; struct mpt_softc* mpt; } ;
typedef int request_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int MPT_MAX_REQUESTS (struct mpt_softc*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct mpt_map_info*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ malloc (size_t,int ,int) ;
 scalar_t__ mpt_dma_tag_create (struct mpt_softc*,int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *) ;
 int mpt_map_rquest ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

__attribute__((used)) static int
mpt_dma_mem_alloc(struct mpt_softc *mpt)
{
 size_t len;
 struct mpt_map_info mi;


 if (mpt->reply_phys != 0) {
  return 0;
 }

 len = sizeof (request_t) * MPT_MAX_REQUESTS(mpt);
 mpt->request_pool = (request_t *)malloc(len, M_DEVBUF, M_WAITOK|M_ZERO);







 if (mpt_dma_tag_create(mpt, bus_get_dma_tag(mpt->dev),
                  1, 0, BUS_SPACE_MAXADDR,
                 BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
                BUS_SPACE_MAXSIZE_32BIT,
                  BUS_SPACE_UNRESTRICTED,
                 BUS_SPACE_MAXSIZE_32BIT, 0,
     &mpt->parent_dmat) != 0) {
  mpt_prt(mpt, "cannot create parent dma tag\n");
  return (1);
 }


 if (mpt_dma_tag_create(mpt, mpt->parent_dmat, PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), 2 * PAGE_SIZE, 1, BUS_SPACE_MAXSIZE_32BIT, 0,
     &mpt->reply_dmat) != 0) {
  mpt_prt(mpt, "cannot create a dma tag for replies\n");
  return (1);
 }


 if (bus_dmamem_alloc(mpt->reply_dmat, (void **)&mpt->reply,
     BUS_DMA_NOWAIT, &mpt->reply_dmap) != 0) {
  mpt_prt(mpt, "cannot allocate %lu bytes of reply memory\n",
      (u_long) (2 * PAGE_SIZE));
  return (1);
 }

 mi.mpt = mpt;
 mi.error = 0;


 bus_dmamap_load(mpt->reply_dmat, mpt->reply_dmap, mpt->reply,
     2 * PAGE_SIZE, mpt_map_rquest, &mi, 0);

 if (mi.error) {
  mpt_prt(mpt, "error %d loading dma map for DMA reply queue\n",
      mi.error);
  return (1);
 }
 mpt->reply_phys = mi.phys;

 return (0);
}
