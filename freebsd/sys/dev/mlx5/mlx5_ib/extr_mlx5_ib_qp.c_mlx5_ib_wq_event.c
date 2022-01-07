
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct mlx5_ib_rwq {TYPE_2__ ibwq; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_core_qp {int qpn; } ;
struct TYPE_3__ {TYPE_2__* wq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int IB_EVENT_WQ_FATAL ;

 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_rwq* to_mibrwq (struct mlx5_core_qp*) ;

__attribute__((used)) static void mlx5_ib_wq_event(struct mlx5_core_qp *core_qp, int type)
{
 struct mlx5_ib_rwq *rwq = to_mibrwq(core_qp);
 struct mlx5_ib_dev *dev = to_mdev(rwq->ibwq.device);
 struct ib_event event;

 if (rwq->ibwq.event_handler) {
  event.device = rwq->ibwq.device;
  event.element.wq = &rwq->ibwq;
  switch (type) {
  case 128:
   event.event = IB_EVENT_WQ_FATAL;
   break;
  default:
   mlx5_ib_warn(dev, "Unexpected event type %d on WQ %06x\n", type, core_qp->qpn);
   return;
  }

  rwq->ibwq.event_handler(&event, rwq->ibwq.wq_context);
 }
}
