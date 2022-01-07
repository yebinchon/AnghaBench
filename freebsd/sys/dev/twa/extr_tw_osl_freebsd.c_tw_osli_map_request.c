
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct twa_softc {int sg_size_factor; int ctlr_handle; int io_lock; int dma_tag; int ioctl_map; int ioctl_tag; } ;
struct TYPE_3__ {int (* tw_osl_callback ) (int *) ;} ;
struct tw_osli_req_context {int length; int flags; int real_length; scalar_t__ error_code; int req_handle; TYPE_1__ req_pkt; int state; int * real_data; int * data; int dma_map; int orig_req; struct twa_softc* ctlr; } ;
typedef scalar_t__ TW_INT32 ;


 int BUS_DMA_WAITOK ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ ENOMEM ;
 int M_NOWAIT ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSLI_BUSY_Q ;
 int TW_OSLI_MALLOC_CLASS ;
 int TW_OSLI_REQ_FLAGS_CCB ;
 int TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED ;
 int TW_OSLI_REQ_FLAGS_FAILED ;
 int TW_OSLI_REQ_FLAGS_IN_PROGRESS ;
 int TW_OSLI_REQ_FLAGS_MAPPED ;
 int TW_OSLI_REQ_FLAGS_PASSTHRU ;
 int TW_OSLI_REQ_STATE_BUSY ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,int,int ,struct tw_osli_req_context*,int ) ;
 scalar_t__ bus_dmamap_load_ccb (int ,int ,int ,int ,struct tw_osli_req_context*,int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int mtx_lock_spin (int ) ;
 int mtx_unlock_spin (int ) ;
 int stub1 (int *) ;
 scalar_t__ tw_cl_fw_passthru (int *,TYPE_1__*,int *) ;
 scalar_t__ tw_cl_start_io (int *,TYPE_1__*,int *) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_disallow_new_requests (struct twa_softc*,int *) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,scalar_t__) ;
 int tw_osli_req_q_insert_tail (struct tw_osli_req_context*,int ) ;
 int twa_map_load_data_callback ;

TW_INT32
tw_osli_map_request(struct tw_osli_req_context *req)
{
 struct twa_softc *sc = req->ctlr;
 TW_INT32 error = 0;

 tw_osli_dbg_dprintf(10, sc, "entered");


 if (req->data != ((void*)0)) {
  if (((vm_offset_t)req->data % sc->sg_size_factor) ||
   (req->length % sc->sg_size_factor)) {
   req->flags |= TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED;

   req->real_data = req->data;
   req->real_length = req->length;
   req->length = (req->length +
    (sc->sg_size_factor - 1)) &
    ~(sc->sg_size_factor - 1);
   req->data = malloc(req->length, TW_OSLI_MALLOC_CLASS,
     M_NOWAIT);
   if (req->data == ((void*)0)) {
    tw_osli_printf(sc, "error = %d",
     TW_CL_SEVERITY_ERROR_STRING,
     TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
     0x201E,
     "Failed to allocate memory "
     "for bounce buffer",
     ENOMEM);

    req->data = req->real_data;
    req->length = req->real_length;
    return(ENOMEM);
   }
  }




  if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU) {

   mtx_lock_spin(sc->io_lock);
   error = bus_dmamap_load(sc->ioctl_tag, sc->ioctl_map,
    req->data, req->length,
    twa_map_load_data_callback, req,
    BUS_DMA_WAITOK);
   mtx_unlock_spin(sc->io_lock);
  } else if (req->flags & TW_OSLI_REQ_FLAGS_CCB) {
   error = bus_dmamap_load_ccb(sc->dma_tag, req->dma_map,
    req->orig_req, twa_map_load_data_callback, req,
    BUS_DMA_WAITOK);
  } else {




   error = bus_dmamap_load(sc->dma_tag, req->dma_map,
    req->data, req->length,
    twa_map_load_data_callback, req,
    BUS_DMA_WAITOK);
  }

  if (!error)
   error = req->error_code;
  else {
   if (error == EINPROGRESS) {





    mtx_lock_spin(sc->io_lock);
    if (!(req->flags & TW_OSLI_REQ_FLAGS_MAPPED))
     req->flags |= TW_OSLI_REQ_FLAGS_IN_PROGRESS;
    tw_osli_disallow_new_requests(sc, &(req->req_handle));
    mtx_unlock_spin(sc->io_lock);
    error = 0;
   } else {
    tw_osli_printf(sc, "error = %d",
     TW_CL_SEVERITY_ERROR_STRING,
     TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
     0x9999,
     "Failed to map DMA memory "
     "for I/O request",
     error);
    req->flags |= TW_OSLI_REQ_FLAGS_FAILED;

    if (req->flags &
     TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED) {
     free(req->data, TW_OSLI_MALLOC_CLASS);




     req->data = req->real_data;
     req->length = req->real_length;
    }
   }
  }

 } else {

  req->state = TW_OSLI_REQ_STATE_BUSY;

  tw_osli_req_q_insert_tail(req, TW_OSLI_BUSY_Q);
  if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU)
   error = tw_cl_fw_passthru(&sc->ctlr_handle,
     &(req->req_pkt), &(req->req_handle));
  else
   error = tw_cl_start_io(&sc->ctlr_handle,
     &(req->req_pkt), &(req->req_handle));
  if (error) {
   req->error_code = error;
   req->req_pkt.tw_osl_callback(&(req->req_handle));
  }
 }
 return(error);
}
