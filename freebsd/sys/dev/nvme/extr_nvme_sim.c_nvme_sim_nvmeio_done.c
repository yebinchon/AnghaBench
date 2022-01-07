
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int cpl; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ nvmeio; } ;
struct nvme_completion {int dummy; } ;


 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SIM_QUEUED ;
 int memcpy (int *,struct nvme_completion const*,int) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion const*) ;
 int xpt_done (union ccb*) ;
 int xpt_done_direct (union ccb*) ;

__attribute__((used)) static void
nvme_sim_nvmeio_done(void *ccb_arg, const struct nvme_completion *cpl)
{
 union ccb *ccb = (union ccb *)ccb_arg;





 memcpy(&ccb->nvmeio.cpl, cpl, sizeof(*cpl));
 ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
 if (nvme_completion_is_error(cpl)) {
  ccb->ccb_h.status = CAM_REQ_CMP_ERR;
  xpt_done(ccb);
 } else {
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done_direct(ccb);
 }
}
