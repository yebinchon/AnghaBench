
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nsze; } ;
struct nvme_namespace {int * cons_cookie; TYPE_2__ data; } ;
struct TYPE_3__ {int nn; } ;
struct nvme_controller {struct nvme_namespace* ns; TYPE_1__ cdata; int ** cons_cookie; scalar_t__ is_failed; int notification_sent; int is_initialized; } ;
struct nvme_consumer {size_t id; int (* ns_fn ) (struct nvme_namespace*,void*) ;int (* fail_fn ) (void*) ;void* (* ctrlr_fn ) (struct nvme_controller*) ;} ;


 int NVME_MAX_NAMESPACES ;
 int atomic_cmpset_32 (int *,int ,int) ;
 int min (int ,int ) ;
 void* stub1 (struct nvme_controller*) ;
 int stub2 (void*) ;
 int stub3 (struct nvme_namespace*,void*) ;

__attribute__((used)) static void
nvme_notify(struct nvme_consumer *cons,
     struct nvme_controller *ctrlr)
{
 struct nvme_namespace *ns;
 void *ctrlr_cookie;
 int cmpset, ns_idx;
 if (!ctrlr->is_initialized)
  return;

 cmpset = atomic_cmpset_32(&ctrlr->notification_sent, 0, 1);
 if (cmpset == 0)
  return;

 if (cons->ctrlr_fn != ((void*)0))
  ctrlr_cookie = (*cons->ctrlr_fn)(ctrlr);
 else
  ctrlr_cookie = (void *)(uintptr_t)0xdeadc0dedeadc0de;
 ctrlr->cons_cookie[cons->id] = ctrlr_cookie;


 if (ctrlr_cookie == ((void*)0))
  return;

 if (ctrlr->is_failed) {
  ctrlr->cons_cookie[cons->id] = ((void*)0);
  if (cons->fail_fn != ((void*)0))
   (*cons->fail_fn)(ctrlr_cookie);




  return;
 }
 for (ns_idx = 0; ns_idx < min(ctrlr->cdata.nn, NVME_MAX_NAMESPACES); ns_idx++) {
  ns = &ctrlr->ns[ns_idx];
  if (ns->data.nsze == 0)
   continue;
  if (cons->ns_fn != ((void*)0))
   ns->cons_cookie[cons->id] =
       (*cons->ns_fn)(ns, ctrlr_cookie);
 }
}
