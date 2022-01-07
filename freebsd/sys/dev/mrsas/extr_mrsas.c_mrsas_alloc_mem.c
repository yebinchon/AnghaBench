
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int max_num_sge; int io_frames_alloc_sz; int chain_frames_alloc_sz; scalar_t__ msix_vectors; int reply_alloc_sz; int max_fw_cmds; int mrsas_dev; int * data_tag; int io_lock; int * mrsas_parent_tag; int pd_info_phys_addr; int pd_info_mem; int pd_info_dmamap; int * pd_info_tag; int evt_detail_phys_addr; int evt_detail_mem; int evt_detail_dmamap; int * evt_detail_tag; int sense_phys_addr; int sense_mem; int sense_dmamap; int * sense_tag; int reply_desc_phys_addr; int reply_desc_mem; int reply_desc_dmamap; int * reply_desc_tag; int chain_frame_phys_addr; int chain_frame_mem; int chain_frame_dmamap; int * chain_frame_tag; int io_request_phys_addr; int io_request_mem; int io_request_dmamap; int * io_request_tag; int verbuf_phys_addr; int verbuf_mem; int verbuf_dmamap; int * verbuf_tag; } ;
struct mrsas_pd_info {int dummy; } ;
struct mrsas_evt_detail {int dummy; } ;
typedef int bus_addr_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int MAXPHYS ;
 int MRSAS_MAX_NAME_LENGTH ;
 int MRSAS_SENSE_LEN ;
 scalar_t__ bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int **) ;
 scalar_t__ bus_dmamap_load (int *,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int *,void**,int ,int *) ;
 int * busdma_lock_mutex ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;
 int mrsas_addr_cb ;

__attribute__((used)) static int
mrsas_alloc_mem(struct mrsas_softc *sc)
{
 u_int32_t verbuf_size, io_req_size, reply_desc_size, sense_size, chain_frame_size,
  evt_detail_size, count, pd_info_size;




 if (bus_dma_tag_create(((void*)0),
     1,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MAXPHYS,
     sc->max_num_sge,
     MAXPHYS,
     0,
     ((void*)0), ((void*)0),
     &sc->mrsas_parent_tag
     )) {
  device_printf(sc->mrsas_dev, "Cannot allocate parent DMA tag\n");
  return (ENOMEM);
 }



 verbuf_size = MRSAS_MAX_NAME_LENGTH * (sizeof(bus_addr_t));
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     verbuf_size,
     1,
     verbuf_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->verbuf_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate verbuf DMA tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->verbuf_tag, (void **)&sc->verbuf_mem,
     BUS_DMA_NOWAIT, &sc->verbuf_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate verbuf memory\n");
  return (ENOMEM);
 }
 bzero(sc->verbuf_mem, verbuf_size);
 if (bus_dmamap_load(sc->verbuf_tag, sc->verbuf_dmamap, sc->verbuf_mem,
     verbuf_size, mrsas_addr_cb, &sc->verbuf_phys_addr,
     BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load verbuf DMA map\n");
  return (ENOMEM);
 }



 io_req_size = sc->io_frames_alloc_sz;
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     16, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     io_req_size,
     1,
     io_req_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->io_request_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create IO request tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->io_request_tag, (void **)&sc->io_request_mem,
     BUS_DMA_NOWAIT, &sc->io_request_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc IO request memory\n");
  return (ENOMEM);
 }
 bzero(sc->io_request_mem, io_req_size);
 if (bus_dmamap_load(sc->io_request_tag, sc->io_request_dmamap,
     sc->io_request_mem, io_req_size, mrsas_addr_cb,
     &sc->io_request_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load IO request memory\n");
  return (ENOMEM);
 }



 chain_frame_size = sc->chain_frames_alloc_sz;
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     4, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     chain_frame_size,
     1,
     chain_frame_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->chain_frame_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create chain frame tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->chain_frame_tag, (void **)&sc->chain_frame_mem,
     BUS_DMA_NOWAIT, &sc->chain_frame_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc chain frame memory\n");
  return (ENOMEM);
 }
 bzero(sc->chain_frame_mem, chain_frame_size);
 if (bus_dmamap_load(sc->chain_frame_tag, sc->chain_frame_dmamap,
     sc->chain_frame_mem, chain_frame_size, mrsas_addr_cb,
     &sc->chain_frame_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load chain frame memory\n");
  return (ENOMEM);
 }
 count = sc->msix_vectors > 0 ? sc->msix_vectors : 1;



 reply_desc_size = sc->reply_alloc_sz * count;
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     16, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     reply_desc_size,
     1,
     reply_desc_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->reply_desc_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create reply descriptor tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->reply_desc_tag, (void **)&sc->reply_desc_mem,
     BUS_DMA_NOWAIT, &sc->reply_desc_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc reply descriptor memory\n");
  return (ENOMEM);
 }
 if (bus_dmamap_load(sc->reply_desc_tag, sc->reply_desc_dmamap,
     sc->reply_desc_mem, reply_desc_size, mrsas_addr_cb,
     &sc->reply_desc_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load reply descriptor memory\n");
  return (ENOMEM);
 }



 sense_size = sc->max_fw_cmds * MRSAS_SENSE_LEN;
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     64, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sense_size,
     1,
     sense_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->sense_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate sense buf tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->sense_tag, (void **)&sc->sense_mem,
     BUS_DMA_NOWAIT, &sc->sense_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate sense buf memory\n");
  return (ENOMEM);
 }
 if (bus_dmamap_load(sc->sense_tag, sc->sense_dmamap,
     sc->sense_mem, sense_size, mrsas_addr_cb, &sc->sense_phys_addr,
     BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load sense buf memory\n");
  return (ENOMEM);
 }




 evt_detail_size = sizeof(struct mrsas_evt_detail);
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     evt_detail_size,
     1,
     evt_detail_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->evt_detail_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create Event detail tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->evt_detail_tag, (void **)&sc->evt_detail_mem,
     BUS_DMA_NOWAIT, &sc->evt_detail_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc Event detail buffer memory\n");
  return (ENOMEM);
 }
 bzero(sc->evt_detail_mem, evt_detail_size);
 if (bus_dmamap_load(sc->evt_detail_tag, sc->evt_detail_dmamap,
     sc->evt_detail_mem, evt_detail_size, mrsas_addr_cb,
     &sc->evt_detail_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load Event detail buffer memory\n");
  return (ENOMEM);
 }




 pd_info_size = sizeof(struct mrsas_pd_info);
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     pd_info_size,
     1,
     pd_info_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->pd_info_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create PD INFO tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->pd_info_tag, (void **)&sc->pd_info_mem,
     BUS_DMA_NOWAIT, &sc->pd_info_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot alloc PD INFO buffer memory\n");
  return (ENOMEM);
 }
 bzero(sc->pd_info_mem, pd_info_size);
 if (bus_dmamap_load(sc->pd_info_tag, sc->pd_info_dmamap,
     sc->pd_info_mem, pd_info_size, mrsas_addr_cb,
     &sc->pd_info_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load PD INFO buffer memory\n");
  return (ENOMEM);
 }





 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MAXPHYS,
     sc->max_num_sge,
     MAXPHYS,
     BUS_DMA_ALLOCNOW,
     busdma_lock_mutex,
     &sc->io_lock,
     &sc->data_tag)) {
  device_printf(sc->mrsas_dev, "Cannot create data dma tag\n");
  return (ENOMEM);
 }
 return (0);
}
