
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int * consumer_handle ;
 int ctrlr_head ;
 int disk_head ;
 int mtx_init (int *,char*,int *,int ) ;
 int nvd_controller_fail ;
 int nvd_lock ;
 int nvd_new_controller ;
 int nvd_new_disk ;
 int * nvme_register_consumer (int ,int ,int *,int ) ;
 int nvme_use_nvd ;

__attribute__((used)) static int
nvd_load()
{
 if (!nvme_use_nvd)
  return 0;

 mtx_init(&nvd_lock, "nvd_lock", ((void*)0), MTX_DEF);
 TAILQ_INIT(&ctrlr_head);
 TAILQ_INIT(&disk_head);

 consumer_handle = nvme_register_consumer(nvd_new_disk,
     nvd_new_controller, ((void*)0), nvd_controller_fail);

 return (consumer_handle != ((void*)0) ? 0 : -1);
}
