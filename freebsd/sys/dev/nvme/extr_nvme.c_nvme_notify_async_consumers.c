
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nvme_controller {void** cons_cookie; } ;
struct nvme_consumer {scalar_t__ id; int (* async_fn ) (void*,struct nvme_completion const*,size_t,void*,size_t) ;} ;
struct nvme_completion {int dummy; } ;


 scalar_t__ INVALID_CONSUMER_ID ;
 size_t NVME_MAX_CONSUMERS ;
 struct nvme_consumer* nvme_consumer ;
 int stub1 (void*,struct nvme_completion const*,size_t,void*,size_t) ;

void
nvme_notify_async_consumers(struct nvme_controller *ctrlr,
       const struct nvme_completion *async_cpl,
       uint32_t log_page_id, void *log_page_buffer,
       uint32_t log_page_size)
{
 struct nvme_consumer *cons;
 void *ctrlr_cookie;
 uint32_t i;

 for (i = 0; i < NVME_MAX_CONSUMERS; i++) {
  cons = &nvme_consumer[i];
  if (cons->id != INVALID_CONSUMER_ID && cons->async_fn != ((void*)0) &&
      (ctrlr_cookie = ctrlr->cons_cookie[i]) != ((void*)0)) {
   (*cons->async_fn)(ctrlr_cookie, async_cpl,
       log_page_id, log_page_buffer, log_page_size);
  }
 }
}
