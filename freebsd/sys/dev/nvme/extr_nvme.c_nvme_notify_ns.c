
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct nvme_namespace {int * cons_cookie; } ;
struct nvme_controller {void** cons_cookie; int is_initialized; struct nvme_namespace* ns; } ;
struct nvme_consumer {scalar_t__ id; int (* ns_fn ) (struct nvme_namespace*,void*) ;} ;


 scalar_t__ INVALID_CONSUMER_ID ;
 size_t NVME_MAX_CONSUMERS ;
 struct nvme_consumer* nvme_consumer ;
 int stub1 (struct nvme_namespace*,void*) ;

void
nvme_notify_ns(struct nvme_controller *ctrlr, int nsid)
{
 struct nvme_consumer *cons;
 struct nvme_namespace *ns = &ctrlr->ns[nsid - 1];
 void *ctrlr_cookie;
 uint32_t i;

 if (!ctrlr->is_initialized)
  return;

 for (i = 0; i < NVME_MAX_CONSUMERS; i++) {
  cons = &nvme_consumer[i];
  if (cons->id != INVALID_CONSUMER_ID && cons->ns_fn != ((void*)0) &&
      (ctrlr_cookie = ctrlr->cons_cookie[i]) != ((void*)0))
   ns->cons_cookie[i] = (*cons->ns_fn)(ns, ctrlr_cookie);
 }
}
