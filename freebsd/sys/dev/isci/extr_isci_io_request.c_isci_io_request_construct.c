
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int status; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct TYPE_3__ {int timer; int controller_handle; int dma_map; int dma_tag; int * remote_device_handle; } ;
struct ISCI_IO_REQUEST {int num_segments; TYPE_1__ parent; int sci_object; union ccb* ccb; int * sge; } ;
typedef int bus_dma_segment_t ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_STATUS ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_REQ_INVALID ;
 int CAM_TIME_INFINITY ;
 int SBT_1MS ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 scalar_t__ SCI_SUCCESS ;
 int bus_dmamap_sync (int ,int ,int) ;
 int callout_reset_sbt (int *,int,int ,int ,struct ISCI_IO_REQUEST*,int ) ;
 int isci_io_request_complete (int ,int *,struct ISCI_IO_REQUEST*,int ) ;
 int isci_io_request_timeout ;
 int sci_object_set_association (int ,struct ISCI_IO_REQUEST*) ;
 scalar_t__ scif_controller_start_io (int ,int *,int ,int ) ;
 scalar_t__ scif_io_request_construct (int ,int *,int ,void*,void*,int *) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
isci_io_request_construct(void *arg, bus_dma_segment_t *seg, int nseg,
    int error)
{
 union ccb *ccb;
 struct ISCI_IO_REQUEST *io_request = (struct ISCI_IO_REQUEST *)arg;
 SCI_REMOTE_DEVICE_HANDLE_T *device = io_request->parent.remote_device_handle;
 SCI_STATUS status;

 io_request->num_segments = nseg;
 io_request->sge = seg;
 ccb = io_request->ccb;

 if (error != 0) {
  ccb->ccb_h.status = CAM_REQ_INVALID;
  xpt_done(ccb);
  return;
 }

 status = scif_io_request_construct(
     io_request->parent.controller_handle,
     io_request->parent.remote_device_handle,
     SCI_CONTROLLER_INVALID_IO_TAG, (void *)io_request,
     (void *)((char*)io_request + sizeof(struct ISCI_IO_REQUEST)),
     &io_request->sci_object);

 if (status != SCI_SUCCESS) {
  isci_io_request_complete(io_request->parent.controller_handle,
      device, io_request, (SCI_IO_STATUS)status);
  return;
 }

 sci_object_set_association(io_request->sci_object, io_request);

 bus_dmamap_sync(io_request->parent.dma_tag, io_request->parent.dma_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 status = (SCI_STATUS)scif_controller_start_io(
     io_request->parent.controller_handle, device,
     io_request->sci_object, SCI_CONTROLLER_INVALID_IO_TAG);

 if (status != SCI_SUCCESS) {
  isci_io_request_complete(io_request->parent.controller_handle,
      device, io_request, (SCI_IO_STATUS)status);
  return;
 }

 if (ccb->ccb_h.timeout != CAM_TIME_INFINITY)
  callout_reset_sbt(&io_request->parent.timer,
      SBT_1MS * ccb->ccb_h.timeout, 0, isci_io_request_timeout,
      io_request, 0);
}
