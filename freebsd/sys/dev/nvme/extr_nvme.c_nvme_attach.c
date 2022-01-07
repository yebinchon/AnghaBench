
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvme_controller* ich_arg; int ich_func; } ;
struct nvme_controller {TYPE_1__ config_hook; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int config_intrhook_establish (TYPE_1__*) ;
 int nvme_ctrlr_construct (struct nvme_controller*,int ) ;
 int nvme_ctrlr_destruct (struct nvme_controller*,int ) ;
 int nvme_ctrlr_hw_reset (struct nvme_controller*) ;
 int nvme_ctrlr_start_config_hook ;

int
nvme_attach(device_t dev)
{
 struct nvme_controller *ctrlr = DEVICE2SOFTC(dev);
 int status;

 status = nvme_ctrlr_construct(ctrlr, dev);

 if (status != 0) {
  nvme_ctrlr_destruct(ctrlr, dev);
  return (status);
 }







 status = nvme_ctrlr_hw_reset(ctrlr);
 if (status != 0) {
  nvme_ctrlr_destruct(ctrlr, dev);
  return (status);
 }

 status = nvme_ctrlr_hw_reset(ctrlr);
 if (status != 0) {
  nvme_ctrlr_destruct(ctrlr, dev);
  return (status);
 }

 ctrlr->config_hook.ich_func = nvme_ctrlr_start_config_hook;
 ctrlr->config_hook.ich_arg = ctrlr;

 config_intrhook_establish(&ctrlr->config_hook);

 return (0);
}
