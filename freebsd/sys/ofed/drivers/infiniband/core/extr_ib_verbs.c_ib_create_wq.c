
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_wq_init_attr {TYPE_2__* cq; int wq_type; int wq_context; int event_handler; } ;
struct ib_wq {int usecnt; int * uobject; struct ib_pd* pd; TYPE_1__* device; TYPE_2__* cq; int wq_type; int wq_context; int event_handler; } ;
struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct TYPE_4__ {int usecnt; } ;
struct TYPE_3__ {struct ib_wq* (* create_wq ) (struct ib_pd*,struct ib_wq_init_attr*,int *) ;} ;


 int ENOSYS ;
 struct ib_wq* ERR_PTR (int ) ;
 int IS_ERR (struct ib_wq*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_wq* stub1 (struct ib_pd*,struct ib_wq_init_attr*,int *) ;

struct ib_wq *ib_create_wq(struct ib_pd *pd,
      struct ib_wq_init_attr *wq_attr)
{
 struct ib_wq *wq;

 if (!pd->device->create_wq)
  return ERR_PTR(-ENOSYS);

 wq = pd->device->create_wq(pd, wq_attr, ((void*)0));
 if (!IS_ERR(wq)) {
  wq->event_handler = wq_attr->event_handler;
  wq->wq_context = wq_attr->wq_context;
  wq->wq_type = wq_attr->wq_type;
  wq->cq = wq_attr->cq;
  wq->device = pd->device;
  wq->pd = pd;
  wq->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
  atomic_inc(&wq_attr->cq->usecnt);
  atomic_set(&wq->usecnt, 0);
 }
 return wq;
}
