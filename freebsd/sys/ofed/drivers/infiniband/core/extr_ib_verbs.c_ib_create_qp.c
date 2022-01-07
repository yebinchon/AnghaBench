
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int max_send_sge; scalar_t__ max_recv_sge; scalar_t__ max_recv_wr; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; TYPE_6__ cap; TYPE_5__* rwq_ind_tbl; TYPE_4__* send_cq; TYPE_3__* srq; TYPE_2__* recv_cq; int qp_context; int event_handler; TYPE_1__* xrcd; } ;
struct ib_qp {scalar_t__ qp_type; int max_read_sge; int max_write_sge; TYPE_5__* rwq_ind_tbl; int * xrcd; TYPE_4__* send_cq; struct ib_pd* pd; TYPE_3__* srq; TYPE_2__* recv_cq; int qp_context; int event_handler; int mr_lock; int usecnt; int * uobject; struct ib_qp* real_qp; struct ib_device* device; } ;
struct ib_pd {int usecnt; struct ib_device* device; } ;
struct TYPE_14__ {int max_sge_rd; } ;
struct ib_device {TYPE_7__ attrs; struct ib_qp* (* create_qp ) (struct ib_pd*,struct ib_qp_init_attr*,int *) ;} ;
struct TYPE_12__ {int usecnt; } ;
struct TYPE_11__ {int usecnt; } ;
struct TYPE_10__ {int usecnt; } ;
struct TYPE_9__ {int usecnt; } ;
struct TYPE_8__ {struct ib_device* device; } ;


 int EINVAL ;
 struct ib_qp* ERR_PTR (int ) ;
 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_qp* ib_create_xrc_qp (struct ib_qp*,struct ib_qp_init_attr*) ;
 int min_t (int ,int ,int ) ;
 int spin_lock_init (int *) ;
 struct ib_qp* stub1 (struct ib_pd*,struct ib_qp_init_attr*,int *) ;
 int u32 ;

struct ib_qp *ib_create_qp(struct ib_pd *pd,
      struct ib_qp_init_attr *qp_init_attr)
{
 struct ib_device *device = pd ? pd->device : qp_init_attr->xrcd->device;
 struct ib_qp *qp;

 if (qp_init_attr->rwq_ind_tbl &&
     (qp_init_attr->recv_cq ||
     qp_init_attr->srq || qp_init_attr->cap.max_recv_wr ||
     qp_init_attr->cap.max_recv_sge))
  return ERR_PTR(-EINVAL);

 qp = device->create_qp(pd, qp_init_attr, ((void*)0));
 if (IS_ERR(qp))
  return qp;

 qp->device = device;
 qp->real_qp = qp;
 qp->uobject = ((void*)0);
 qp->qp_type = qp_init_attr->qp_type;
 qp->rwq_ind_tbl = qp_init_attr->rwq_ind_tbl;

 atomic_set(&qp->usecnt, 0);
 spin_lock_init(&qp->mr_lock);

 if (qp_init_attr->qp_type == IB_QPT_XRC_TGT)
  return ib_create_xrc_qp(qp, qp_init_attr);

 qp->event_handler = qp_init_attr->event_handler;
 qp->qp_context = qp_init_attr->qp_context;
 if (qp_init_attr->qp_type == IB_QPT_XRC_INI) {
  qp->recv_cq = ((void*)0);
  qp->srq = ((void*)0);
 } else {
  qp->recv_cq = qp_init_attr->recv_cq;
  if (qp_init_attr->recv_cq)
   atomic_inc(&qp_init_attr->recv_cq->usecnt);
  qp->srq = qp_init_attr->srq;
  if (qp->srq)
   atomic_inc(&qp_init_attr->srq->usecnt);
 }

 qp->pd = pd;
 qp->send_cq = qp_init_attr->send_cq;
 qp->xrcd = ((void*)0);

 atomic_inc(&pd->usecnt);
 if (qp_init_attr->send_cq)
  atomic_inc(&qp_init_attr->send_cq->usecnt);
 if (qp_init_attr->rwq_ind_tbl)
  atomic_inc(&qp->rwq_ind_tbl->usecnt);






 qp->max_write_sge = qp_init_attr->cap.max_send_sge;
 qp->max_read_sge = min_t(u32, qp_init_attr->cap.max_send_sge,
     device->attrs.max_sge_rd);

 return qp;
}
