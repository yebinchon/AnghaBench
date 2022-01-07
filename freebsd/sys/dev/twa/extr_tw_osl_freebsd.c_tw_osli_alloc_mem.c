
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int dma_tag; struct tw_osli_req_context* req_ctx_buf; int ioctl_map; int ioctl_tag; int * io_lock; int alignment; int parent_tag; int dma_mem_phys; int dma_mem; int cmd_map; int cmd_tag; int bus_dev; int * non_dma_mem; int sg_size_factor; int device_id; int flags; int ctlr_handle; } ;
struct tw_osli_req_context {int * ioctl_wake_timeout_lock; int ioctl_wake_timeout_lock_handle; int dma_map; struct twa_softc* ctlr; } ;
typedef int bus_size_t ;
typedef int bus_addr_t ;
typedef int TW_UINT32 ;
typedef int TW_INT32 ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int ENOMEM ;
 int MTX_DEF ;
 int M_WAITOK ;
 int TW_CL_64BIT_ADDRESSES ;
 int TW_CL_64BIT_SG_LENGTH ;
 int TW_CL_MAX_32BIT_SG_ELEMENTS ;
 int TW_CL_MAX_64BIT_SG_ELEMENTS ;
 int TW_CL_MAX_IO_SIZE ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSLI_BUSY_Q ;
 int TW_OSLI_DMA_BOUNDARY ;
 int TW_OSLI_FREE_Q ;
 int TW_OSLI_MALLOC_CLASS ;
 int TW_OSLI_MAX_NUM_AENS ;
 int TW_OSLI_MAX_NUM_REQUESTS ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,int *,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (struct tw_osli_req_context*,int) ;
 int * malloc (int,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int tw_cl_get_mem_requirements (int *,int ,int ,int,int ,int *,int *,int*,int*) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,int,...) ;
 int tw_osli_req_q_init (struct twa_softc*,int ) ;
 int tw_osli_req_q_insert_tail (struct tw_osli_req_context*,int ) ;
 int * twa_busdma_lock ;
 int twa_map_load_callback ;

__attribute__((used)) static TW_INT32
tw_osli_alloc_mem(struct twa_softc *sc)
{
 struct tw_osli_req_context *req;
 TW_UINT32 max_sg_elements;
 TW_UINT32 non_dma_mem_size;
 TW_UINT32 dma_mem_size;
 TW_INT32 error;
 TW_INT32 i;

 tw_osli_dbg_dprintf(3, sc, "entered");

 sc->flags |= (sizeof(bus_addr_t) == 8) ? TW_CL_64BIT_ADDRESSES : 0;
 sc->flags |= (sizeof(bus_size_t) == 8) ? TW_CL_64BIT_SG_LENGTH : 0;

 max_sg_elements = (sizeof(bus_addr_t) == 8) ?
  TW_CL_MAX_64BIT_SG_ELEMENTS : TW_CL_MAX_32BIT_SG_ELEMENTS;

 if ((error = tw_cl_get_mem_requirements(&sc->ctlr_handle, sc->flags,
   sc->device_id, TW_OSLI_MAX_NUM_REQUESTS, TW_OSLI_MAX_NUM_AENS,
   &(sc->alignment), &(sc->sg_size_factor),
   &non_dma_mem_size, &dma_mem_size
   ))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2008,
   "Can't get Common Layer's memory requirements",
   error);
  return(error);
 }

 if ((sc->non_dma_mem = malloc(non_dma_mem_size, TW_OSLI_MALLOC_CLASS,
    M_WAITOK)) == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2009,
   "Can't allocate non-dma memory",
   ENOMEM);
  return(ENOMEM);
 }


 if (bus_dma_tag_create(bus_get_dma_tag(sc->bus_dev),
    sc->alignment,
    TW_OSLI_DMA_BOUNDARY,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    TW_CL_MAX_IO_SIZE,
    max_sg_elements,
    TW_CL_MAX_IO_SIZE,
    0,
    ((void*)0),
    ((void*)0),
    &sc->parent_tag )) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x200A,
   "Can't allocate parent DMA tag",
   ENOMEM);
  return(ENOMEM);
 }


 if (bus_dma_tag_create(sc->parent_tag,
    sc->alignment,
    0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    dma_mem_size,
    1,
    BUS_SPACE_MAXSIZE,
    0,
    ((void*)0),
    ((void*)0),
    &sc->cmd_tag )) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x200B,
   "Can't allocate DMA tag for Common Layer's "
   "DMA'able memory",
   ENOMEM);
  return(ENOMEM);
 }

 if (bus_dmamem_alloc(sc->cmd_tag, &sc->dma_mem,
  BUS_DMA_NOWAIT, &sc->cmd_map)) {

  if (bus_dmamem_alloc(sc->cmd_tag, &sc->dma_mem,
   BUS_DMA_NOWAIT, &sc->cmd_map)) {
   tw_osli_printf(sc, "error = %d",
    TW_CL_SEVERITY_ERROR_STRING,
    TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
    0x200C,
    "Can't allocate DMA'able memory for the"
    "Common Layer",
    ENOMEM);
   return(ENOMEM);
  }
 }

 bus_dmamap_load(sc->cmd_tag, sc->cmd_map, sc->dma_mem,
  dma_mem_size, twa_map_load_callback,
  &sc->dma_mem_phys, 0);





 if (bus_dma_tag_create(sc->parent_tag,
    sc->alignment,
    0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    TW_CL_MAX_IO_SIZE,
    max_sg_elements,
    TW_CL_MAX_IO_SIZE,
    BUS_DMA_ALLOCNOW,
    twa_busdma_lock,
    sc->io_lock,
    &sc->dma_tag )) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x200F,
   "Can't allocate DMA tag for data buffers",
   ENOMEM);
  return(ENOMEM);
 }





 if (bus_dma_tag_create(sc->parent_tag,
    sc->alignment,
    0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    TW_CL_MAX_IO_SIZE,
    max_sg_elements,
    TW_CL_MAX_IO_SIZE,
    BUS_DMA_ALLOCNOW,
    twa_busdma_lock,
    sc->io_lock,
    &sc->ioctl_tag )) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2010,
   "Can't allocate DMA tag for ioctl data buffers",
   ENOMEM);
  return(ENOMEM);
 }


 if (bus_dmamap_create(sc->ioctl_tag, 0, &sc->ioctl_map)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2011,
   "Can't create ioctl map",
   ENOMEM);
  return(ENOMEM);
 }



 tw_osli_req_q_init(sc, TW_OSLI_FREE_Q);
 tw_osli_req_q_init(sc, TW_OSLI_BUSY_Q);

 if ((sc->req_ctx_buf = (struct tw_osli_req_context *)
   malloc((sizeof(struct tw_osli_req_context) *
    TW_OSLI_MAX_NUM_REQUESTS),
    TW_OSLI_MALLOC_CLASS, M_WAITOK)) == ((void*)0)) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2012,
   "Failed to allocate request packets",
   ENOMEM);
  return(ENOMEM);
 }
 bzero(sc->req_ctx_buf,
  sizeof(struct tw_osli_req_context) * TW_OSLI_MAX_NUM_REQUESTS);

 for (i = 0; i < TW_OSLI_MAX_NUM_REQUESTS; i++) {
  req = &(sc->req_ctx_buf[i]);
  req->ctlr = sc;
  if (bus_dmamap_create(sc->dma_tag, 0, &req->dma_map)) {
   tw_osli_printf(sc, "request # = %d, error = %d",
    TW_CL_SEVERITY_ERROR_STRING,
    TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
    0x2013,
    "Can't create dma map",
    i, ENOMEM);
   return(ENOMEM);
  }


  req->ioctl_wake_timeout_lock = &(req->ioctl_wake_timeout_lock_handle);
  mtx_init(req->ioctl_wake_timeout_lock, "tw_ioctl_wake_timeout_lock", ((void*)0), MTX_DEF);


  tw_osli_req_q_insert_tail(req, TW_OSLI_FREE_Q);
 }

 return(0);
}
