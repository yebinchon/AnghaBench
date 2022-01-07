
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {struct ib_cq* (* create_cq ) (struct ib_device*,struct ib_cq_init_attr const*,int *,int *) ;} ;
struct ib_cq_init_attr {int dummy; } ;
struct ib_cq {void (* event_handler ) (struct ib_event*,void*) ;int usecnt; void* cq_context; int comp_handler; int * uobject; struct ib_device* device; } ;
typedef int ib_comp_handler ;


 int IS_ERR (struct ib_cq*) ;
 int atomic_set (int *,int ) ;
 struct ib_cq* stub1 (struct ib_device*,struct ib_cq_init_attr const*,int *,int *) ;

struct ib_cq *ib_create_cq(struct ib_device *device,
      ib_comp_handler comp_handler,
      void (*event_handler)(struct ib_event *, void *),
      void *cq_context,
      const struct ib_cq_init_attr *cq_attr)
{
 struct ib_cq *cq;

 cq = device->create_cq(device, cq_attr, ((void*)0), ((void*)0));

 if (!IS_ERR(cq)) {
  cq->device = device;
  cq->uobject = ((void*)0);
  cq->comp_handler = comp_handler;
  cq->event_handler = event_handler;
  cq->cq_context = cq_context;
  atomic_set(&cq->usecnt, 0);
 }

 return cq;
}
