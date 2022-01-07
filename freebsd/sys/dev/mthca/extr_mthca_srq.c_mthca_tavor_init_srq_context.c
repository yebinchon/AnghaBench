
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


struct mthca_tavor_srq_context {void* uar; void* lkey; void* state_pd; int wqe_base_ds; } ;
struct TYPE_8__ {int lkey; } ;
struct TYPE_9__ {TYPE_1__ ibmr; } ;
struct mthca_srq {int wqe_shift; TYPE_2__ mr; } ;
struct TYPE_12__ {TYPE_4__* uobject; } ;
struct mthca_pd {TYPE_5__ ibpd; int pd_num; } ;
struct TYPE_13__ {int index; } ;
struct mthca_dev {TYPE_6__ driver_uar; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_14__ {TYPE_3__ uar; } ;
struct TYPE_11__ {int context; } ;


 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int) ;
 int memset (struct mthca_tavor_srq_context*,int ,int) ;
 TYPE_7__* to_mucontext (int ) ;

__attribute__((used)) static void mthca_tavor_init_srq_context(struct mthca_dev *dev,
      struct mthca_pd *pd,
      struct mthca_srq *srq,
      struct mthca_tavor_srq_context *context)
{
 memset(context, 0, sizeof *context);

 context->wqe_base_ds = cpu_to_be64(1 << (srq->wqe_shift - 4));
 context->state_pd = cpu_to_be32(pd->pd_num);
 context->lkey = cpu_to_be32(srq->mr.ibmr.lkey);

 if (pd->ibpd.uobject)
  context->uar =
   cpu_to_be32(to_mucontext(pd->ibpd.uobject->context)->uar.index);
 else
  context->uar = cpu_to_be32(dev->driver_uar.index);
}
