
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int consumer_cookie ;
 int nvme_register_consumer (int ,int ,int *,int ) ;
 int nvme_sim_controller_fail ;
 int nvme_sim_new_controller ;
 int nvme_sim_new_ns ;
 scalar_t__ nvme_use_nvd ;

__attribute__((used)) static void
nvme_sim_init(void)
{
 if (nvme_use_nvd)
  return;

 consumer_cookie = nvme_register_consumer(nvme_sim_new_ns,
     nvme_sim_new_controller, ((void*)0), nvme_sim_controller_fail);
}
