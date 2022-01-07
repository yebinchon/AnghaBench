
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct taskqgroup {int dummy; } ;
struct grouptask {int dummy; } ;
typedef int iflib_intr_type_t ;
typedef TYPE_3__* if_irq_t ;
typedef TYPE_4__* if_ctx_t ;
typedef int gtask_fn_t ;
struct TYPE_12__ {int * ifc_dev; struct grouptask ifc_vflr_task; TYPE_2__* ifc_rxqs; TYPE_1__* ifc_txqs; } ;
struct TYPE_11__ {int * ii_res; } ;
struct TYPE_10__ {struct grouptask ifr_task; } ;
struct TYPE_9__ {struct grouptask ift_task; } ;


 int GROUPTASK_INIT (struct grouptask*,int ,int *,void*) ;



 int * _task_fn_iov ;
 int * _task_fn_rx ;
 int * _task_fn_tx ;
 int iflib_irq_set_affinity (TYPE_4__*,TYPE_3__*,int,int,struct grouptask*,struct taskqgroup*,void*,char const*) ;
 int panic (char*) ;
 struct taskqgroup* qgroup_if_config_tqg ;
 struct taskqgroup* qgroup_if_io_tqg ;
 int taskqgroup_attach (struct taskqgroup*,struct grouptask*,void*,int *,int *,char const*) ;

void
iflib_softirq_alloc_generic(if_ctx_t ctx, if_irq_t irq, iflib_intr_type_t type, void *arg, int qid, const char *name)
{
 struct grouptask *gtask;
 struct taskqgroup *tqg;
 gtask_fn_t *fn;
 void *q;
 int err;

 switch (type) {
 case 128:
  q = &ctx->ifc_txqs[qid];
  gtask = &ctx->ifc_txqs[qid].ift_task;
  tqg = qgroup_if_io_tqg;
  fn = _task_fn_tx;
  break;
 case 129:
  q = &ctx->ifc_rxqs[qid];
  gtask = &ctx->ifc_rxqs[qid].ifr_task;
  tqg = qgroup_if_io_tqg;
  fn = _task_fn_rx;
  break;
 case 130:
  q = ctx;
  gtask = &ctx->ifc_vflr_task;
  tqg = qgroup_if_config_tqg;
  fn = _task_fn_iov;
  break;
 default:
  panic("unknown net intr type");
 }
 GROUPTASK_INIT(gtask, 0, fn, q);
 if (irq != ((void*)0)) {
  err = iflib_irq_set_affinity(ctx, irq, type, qid, gtask, tqg,
      q, name);
  if (err)
   taskqgroup_attach(tqg, gtask, q, ctx->ifc_dev,
       irq->ii_res, name);
 } else {
  taskqgroup_attach(tqg, gtask, q, ((void*)0), ((void*)0), name);
 }
}
