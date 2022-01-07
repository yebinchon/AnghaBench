
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


struct TYPE_13__ {int syndrome; int cqn; } ;
struct TYPE_12__ {int port; } ;
struct TYPE_11__ {int out_param; int status; int token; } ;
struct TYPE_10__ {int qpn; } ;
struct TYPE_9__ {int srqn; } ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_14__ {TYPE_6__ cq_err; TYPE_5__ port_change; TYPE_4__ cmd; TYPE_3__ qp; TYPE_2__ srq; TYPE_1__ comp; } ;
struct mthca_eqe {int type; int subtype; TYPE_7__ event; } ;
struct mthca_eq {int cons_index; int eqn; } ;
struct mthca_dev {int dummy; } ;


 int IB_EVENT_COMM_EST ;
 int IB_EVENT_CQ_ERR ;
 int IB_EVENT_PATH_MIG ;
 int IB_EVENT_PATH_MIG_ERR ;
 int IB_EVENT_QP_ACCESS_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 int IB_EVENT_QP_REQ_ERR ;
 int IB_EVENT_SQ_DRAINED ;
 int IB_EVENT_SRQ_LIMIT_REACHED ;
 int MTHCA_NUM_SPARE_EQE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int disarm_cq (struct mthca_dev*,int ,int) ;
 int mthca_cmd_event (struct mthca_dev*,int ,int ,int ) ;
 int mthca_cq_completion (struct mthca_dev*,int) ;
 int mthca_cq_event (struct mthca_dev*,int,int ) ;
 int mthca_qp_event (struct mthca_dev*,int,int ) ;
 int mthca_srq_event (struct mthca_dev*,int,int ) ;
 int mthca_warn (struct mthca_dev*,char*,...) ;
 struct mthca_eqe* next_eqe_sw (struct mthca_eq*) ;
 int port_change (struct mthca_dev*,int,int) ;
 int rmb () ;
 int set_eq_ci (struct mthca_dev*,struct mthca_eq*,int ) ;
 int set_eqe_hw (struct mthca_eqe*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mthca_eq_int(struct mthca_dev *dev, struct mthca_eq *eq)
{
 struct mthca_eqe *eqe;
 int disarm_cqn;
 int eqes_found = 0;
 int set_ci = 0;

 while ((eqe = next_eqe_sw(eq))) {




  rmb();

  switch (eqe->type) {
  case 143:
   disarm_cqn = be32_to_cpu(eqe->event.comp.cqn) & 0xffffff;
   disarm_cq(dev, eq->eqn, disarm_cqn);
   mthca_cq_completion(dev, disarm_cqn);
   break;

  case 137:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_PATH_MIG);
   break;

  case 144:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_COMM_EST);
   break;

  case 134:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_SQ_DRAINED);
   break;

  case 131:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_QP_LAST_WQE_REACHED);
   break;

  case 132:
   mthca_srq_event(dev, be32_to_cpu(eqe->event.srq.srqn) & 0xffffff,
     IB_EVENT_SRQ_LIMIT_REACHED);
   break;

  case 129:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_QP_FATAL);
   break;

  case 136:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_PATH_MIG_ERR);
   break;

  case 128:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_QP_REQ_ERR);
   break;

  case 130:
   mthca_qp_event(dev, be32_to_cpu(eqe->event.qp.qpn) & 0xffffff,
           IB_EVENT_QP_ACCESS_ERR);
   break;

  case 145:
   mthca_cmd_event(dev,
     be16_to_cpu(eqe->event.cmd.token),
     eqe->event.cmd.status,
     be64_to_cpu(eqe->event.cmd.out_param));
   break;

  case 135:
   port_change(dev,
        (be32_to_cpu(eqe->event.port_change.port) >> 28) & 3,
        eqe->subtype == 0x4);
   break;

  case 142:
   mthca_warn(dev, "CQ %s on CQN %06x\n",
       eqe->event.cq_err.syndrome == 1 ?
       "overrun" : "access violation",
       be32_to_cpu(eqe->event.cq_err.cqn) & 0xffffff);
   mthca_cq_event(dev, be32_to_cpu(eqe->event.cq_err.cqn),
           IB_EVENT_CQ_ERR);
   break;

  case 139:
   mthca_warn(dev, "EQ overrun on EQN %d\n", eq->eqn);
   break;

  case 140:
  case 133:
  case 138:
  case 141:
  default:
   mthca_warn(dev, "Unhandled event %02x(%02x) on EQ %d\n",
       eqe->type, eqe->subtype, eq->eqn);
   break;
  }

  set_eqe_hw(eqe);
  ++eq->cons_index;
  eqes_found = 1;
  ++set_ci;
  if (unlikely(set_ci >= MTHCA_NUM_SPARE_EQE)) {




   set_eq_ci(dev, eq, eq->cons_index);
   set_ci = 0;
  }
 }





 return eqes_found;
}
