
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller_data {int dummy; } ;
struct nvme_controller {struct nvme_controller_data const cdata; } ;



const struct nvme_controller_data *
nvme_ctrlr_get_data(struct nvme_controller *ctrlr)
{

 return (&ctrlr->cdata);
}
