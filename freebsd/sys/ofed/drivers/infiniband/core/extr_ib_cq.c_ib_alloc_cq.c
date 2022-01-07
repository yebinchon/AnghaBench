
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {struct ib_cq* (* create_cq ) (struct ib_device*,struct ib_cq_init_attr*,int *,int *) ;} ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct ib_cq {int poll_ctx; int work; int * comp_handler; int usecnt; void* cq_context; int * event_handler; int * uobject; struct ib_device* device; } ;
typedef enum ib_poll_context { ____Placeholder_ib_poll_context } ib_poll_context ;


 int EINVAL ;
 struct ib_cq* ERR_PTR (int ) ;
 int IB_CQ_NEXT_COMP ;



 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct ib_cq*) ;
 int atomic_set (int *,int ) ;
 int * ib_cq_completion_workqueue ;
 int ib_cq_poll_work ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 struct ib_cq* stub1 (struct ib_device*,struct ib_cq_init_attr*,int *,int *) ;

struct ib_cq *
ib_alloc_cq(struct ib_device *dev, void *private,
    int nr_cqe, int comp_vector, enum ib_poll_context poll_ctx)
{
 struct ib_cq_init_attr cq_attr = {
  .cqe = nr_cqe,
  .comp_vector = comp_vector,
 };
 struct ib_cq *cq;





 switch (poll_ctx) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return (ERR_PTR(-EINVAL));
 }

 cq = dev->create_cq(dev, &cq_attr, ((void*)0), ((void*)0));
 if (IS_ERR(cq))
  return (cq);

 cq->device = dev;
 cq->uobject = ((void*)0);
 cq->event_handler = ((void*)0);
 cq->cq_context = private;
 cq->poll_ctx = poll_ctx;
 atomic_set(&cq->usecnt, 0);

 switch (poll_ctx) {
 case 130:
  cq->comp_handler = ((void*)0);
  break;
 case 129:
 case 128:
  cq->comp_handler = ib_cq_completion_workqueue;
  INIT_WORK(&cq->work, ib_cq_poll_work);
  ib_req_notify_cq(cq, IB_CQ_NEXT_COMP);
  break;
 default:
  break;
 }
 return (cq);
}
