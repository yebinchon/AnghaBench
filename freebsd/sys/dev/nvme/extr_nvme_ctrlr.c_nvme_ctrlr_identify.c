
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mdts; } ;
struct nvme_controller {int min_page_size; TYPE_1__ cdata; int max_xfer_size; } ;
struct nvme_completion_poll_status {int cpl; scalar_t__ done; } ;


 int ENXIO ;
 int min (int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_completion_poll (struct nvme_completion_poll_status*) ;
 int nvme_completion_poll_cb ;
 int nvme_controller_data_swapbytes (TYPE_1__*) ;
 int nvme_ctrlr_cmd_identify_controller (struct nvme_controller*,TYPE_1__*,int ,struct nvme_completion_poll_status*) ;
 int nvme_printf (struct nvme_controller*,char*) ;

__attribute__((used)) static int
nvme_ctrlr_identify(struct nvme_controller *ctrlr)
{
 struct nvme_completion_poll_status status;

 status.done = 0;
 nvme_ctrlr_cmd_identify_controller(ctrlr, &ctrlr->cdata,
     nvme_completion_poll_cb, &status);
 nvme_completion_poll(&status);
 if (nvme_completion_is_error(&status.cpl)) {
  nvme_printf(ctrlr, "nvme_identify_controller failed!\n");
  return (ENXIO);
 }


 nvme_controller_data_swapbytes(&ctrlr->cdata);





 if (ctrlr->cdata.mdts > 0)
  ctrlr->max_xfer_size = min(ctrlr->max_xfer_size,
      ctrlr->min_page_size * (1 << (ctrlr->cdata.mdts)));

 return (0);
}
