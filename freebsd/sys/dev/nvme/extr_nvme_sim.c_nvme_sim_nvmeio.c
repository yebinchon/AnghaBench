
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func_code; int status; } ;
struct TYPE_3__ {int flags; int status; } ;
struct ccb_nvmeio {int cmd; TYPE_1__ ccb_h; int dxfer_len; void* data_ptr; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_nvmeio nvmeio; } ;
typedef int uint32_t ;
struct nvme_request {int cmd; } ;
struct nvme_controller {int dummy; } ;
struct cam_sim {int dummy; } ;
struct bio {int dummy; } ;


 int CAM_DATA_BIO ;
 int CAM_DATA_MASK ;
 int CAM_DATA_SG ;
 int CAM_RESRC_UNAVAIL ;
 int CAM_SIM_QUEUED ;
 scalar_t__ XPT_NVME_IO ;
 int memcpy (int *,int *,int) ;
 struct nvme_request* nvme_allocate_request_bio (struct bio*,int ,union ccb*) ;
 struct nvme_request* nvme_allocate_request_ccb (union ccb*,int ,union ccb*) ;
 struct nvme_request* nvme_allocate_request_null (int ,union ccb*) ;
 struct nvme_request* nvme_allocate_request_vaddr (void*,int ,int ,union ccb*) ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;
 int nvme_ctrlr_submit_io_request (struct nvme_controller*,struct nvme_request*) ;
 int nvme_sim_nvmeio_done ;
 struct nvme_controller* sim2ctrlr (struct cam_sim*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
nvme_sim_nvmeio(struct cam_sim *sim, union ccb *ccb)
{
 struct ccb_nvmeio *nvmeio = &ccb->nvmeio;
 struct nvme_request *req;
 void *payload;
 uint32_t size;
 struct nvme_controller *ctrlr;

 ctrlr = sim2ctrlr(sim);
 payload = nvmeio->data_ptr;
 size = nvmeio->dxfer_len;

 if ((nvmeio->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_BIO)
  req = nvme_allocate_request_bio((struct bio *)payload,
      nvme_sim_nvmeio_done, ccb);
 else if ((nvmeio->ccb_h.flags & CAM_DATA_SG) == CAM_DATA_SG)
  req = nvme_allocate_request_ccb(ccb, nvme_sim_nvmeio_done, ccb);
 else if (payload == ((void*)0))
  req = nvme_allocate_request_null(nvme_sim_nvmeio_done, ccb);
 else
  req = nvme_allocate_request_vaddr(payload, size,
      nvme_sim_nvmeio_done, ccb);

 if (req == ((void*)0)) {
  nvmeio->ccb_h.status = CAM_RESRC_UNAVAIL;
  xpt_done(ccb);
  return;
 }
 ccb->ccb_h.status |= CAM_SIM_QUEUED;

 memcpy(&req->cmd, &ccb->nvmeio.cmd, sizeof(ccb->nvmeio.cmd));

 if (ccb->ccb_h.func_code == XPT_NVME_IO)
  nvme_ctrlr_submit_io_request(ctrlr, req);
 else
  nvme_ctrlr_submit_admin_request(ctrlr, req);
}
