
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_qp_init_attr {TYPE_2__* xrcd; int qp_context; int event_handler; } ;
struct ib_qp {TYPE_1__* device; int open_list; TYPE_2__* xrcd; int * srq; int * recv_cq; int send_cq; int * pd; struct ib_qp* qp_context; int event_handler; } ;
struct TYPE_4__ {int usecnt; } ;
struct TYPE_3__ {int (* destroy_qp ) (struct ib_qp*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (struct ib_qp*) ;
 int __ib_insert_xrcd_qp (TYPE_2__*,struct ib_qp*) ;
 struct ib_qp* __ib_open_qp (struct ib_qp*,int ,int ) ;
 int __ib_shared_qp_event_handler ;
 int atomic_inc (int *) ;
 int stub1 (struct ib_qp*) ;

__attribute__((used)) static struct ib_qp *ib_create_xrc_qp(struct ib_qp *qp,
  struct ib_qp_init_attr *qp_init_attr)
{
 struct ib_qp *real_qp = qp;

 qp->event_handler = __ib_shared_qp_event_handler;
 qp->qp_context = qp;
 qp->pd = ((void*)0);
 qp->send_cq = qp->recv_cq = ((void*)0);
 qp->srq = ((void*)0);
 qp->xrcd = qp_init_attr->xrcd;
 atomic_inc(&qp_init_attr->xrcd->usecnt);
 INIT_LIST_HEAD(&qp->open_list);

 qp = __ib_open_qp(real_qp, qp_init_attr->event_handler,
     qp_init_attr->qp_context);
 if (!IS_ERR(qp))
  __ib_insert_xrcd_qp(qp_init_attr->xrcd, real_qp);
 else
  real_qp->device->destroy_qp(real_qp);
 return qp;
}
