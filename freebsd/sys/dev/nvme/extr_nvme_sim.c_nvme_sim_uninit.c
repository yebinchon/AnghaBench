
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int consumer_cookie ;
 int nvme_unregister_consumer (int ) ;
 scalar_t__ nvme_use_nvd ;

__attribute__((used)) static void
nvme_sim_uninit(void)
{
 if (nvme_use_nvd)
  return;


 nvme_unregister_consumer(consumer_cookie);
}
