
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct mpt_softc {int max_cam_seg_cnt; scalar_t__ request_phys; int buffer_dmat; TYPE_1__* request_pool; int * request; int request_dmap; int request_dmat; int parent_dmat; } ;
struct mpt_map_info {int error; scalar_t__ phys; struct mpt_softc* mpt; } ;
struct TYPE_2__ {int dmap; int * sense_vbuf; scalar_t__ sense_pbuf; int * req_vbuf; scalar_t__ req_pbuf; int index; } ;
typedef TYPE_1__ request_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 scalar_t__ MPT_REQUEST_AREA ;
 int MPT_REQ_MEM_SIZE (struct mpt_softc*) ;
 scalar_t__ MPT_SENSE_SIZE ;
 int PAGE_SIZE ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int *,int,int ,struct mpt_map_info*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 scalar_t__ mpt_dma_tag_create (struct mpt_softc*,int ,int,int ,int ,int ,int *,int *,int,int,int ,int ,int *) ;
 int mpt_map_rquest ;
 int mpt_prt (struct mpt_softc*,char*,...) ;

__attribute__((used)) static int
mpt_dma_buf_alloc(struct mpt_softc *mpt)
{
 struct mpt_map_info mi;
 uint8_t *vptr;
 uint32_t pptr, end;
 int i, error;


 if (mpt_dma_tag_create(mpt, mpt->parent_dmat, 1,
     0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), (mpt->max_cam_seg_cnt - 1) * PAGE_SIZE,
     mpt->max_cam_seg_cnt, BUS_SPACE_MAXSIZE_32BIT, 0,
     &mpt->buffer_dmat) != 0) {
  mpt_prt(mpt, "cannot create a dma tag for data buffers\n");
  return (1);
 }


 if (mpt_dma_tag_create(mpt, mpt->parent_dmat, PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), MPT_REQ_MEM_SIZE(mpt), 1, BUS_SPACE_MAXSIZE_32BIT, 0,
     &mpt->request_dmat) != 0) {
  mpt_prt(mpt, "cannot create a dma tag for requests\n");
  return (1);
 }


 if (bus_dmamem_alloc(mpt->request_dmat, (void **)&mpt->request,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &mpt->request_dmap) != 0) {
  mpt_prt(mpt, "cannot allocate %d bytes of request memory\n",
      MPT_REQ_MEM_SIZE(mpt));
  return (1);
 }

 mi.mpt = mpt;
 mi.error = 0;


 bus_dmamap_load(mpt->request_dmat, mpt->request_dmap, mpt->request,
     MPT_REQ_MEM_SIZE(mpt), mpt_map_rquest, &mi, 0);

 if (mi.error) {
  mpt_prt(mpt, "error %d loading dma map for DMA request queue\n",
      mi.error);
  return (1);
 }
 mpt->request_phys = mi.phys;




 i = 0;
 pptr = mpt->request_phys;
 vptr = mpt->request;
 end = pptr + MPT_REQ_MEM_SIZE(mpt);
 while(pptr < end) {
  request_t *req = &mpt->request_pool[i];
  req->index = i++;


  req->req_pbuf = pptr;
  req->req_vbuf = vptr;

  pptr += MPT_REQUEST_AREA;
  vptr += MPT_REQUEST_AREA;

  req->sense_pbuf = (pptr - MPT_SENSE_SIZE);
  req->sense_vbuf = (vptr - MPT_SENSE_SIZE);

  error = bus_dmamap_create(mpt->buffer_dmat, 0, &req->dmap);
  if (error) {
   mpt_prt(mpt, "error %d creating per-cmd DMA maps\n",
       error);
   return (1);
  }
 }

 return (0);
}
