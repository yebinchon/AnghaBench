
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nvme_controller {int ** cons_cookie; int is_initialized; } ;
struct nvme_consumer {scalar_t__ id; int (* fail_fn ) (void*) ;} ;


 scalar_t__ INVALID_CONSUMER_ID ;
 size_t NVME_MAX_CONSUMERS ;
 struct nvme_consumer* nvme_consumer ;
 int stub1 (void*) ;

void
nvme_notify_fail_consumers(struct nvme_controller *ctrlr)
{
 struct nvme_consumer *cons;
 void *ctrlr_cookie;
 uint32_t i;







 if (!ctrlr->is_initialized)
  return;

 for (i = 0; i < NVME_MAX_CONSUMERS; i++) {
  cons = &nvme_consumer[i];
  if (cons->id != INVALID_CONSUMER_ID &&
      (ctrlr_cookie = ctrlr->cons_cookie[i]) != ((void*)0)) {
   ctrlr->cons_cookie[i] = ((void*)0);
   if (cons->fail_fn != ((void*)0))
    cons->fail_fn(ctrlr_cookie);
  }
 }
}
