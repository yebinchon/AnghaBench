
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct res_qp {TYPE_4__* srq; TYPE_3__* scq; TYPE_2__* rcq; TYPE_1__* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_8__ {int ref_count; } ;
struct TYPE_7__ {int ref_count; } ;
struct TYPE_6__ {int ref_count; } ;
struct TYPE_5__ {int ref_count; } ;


 int RES_QP ;
 int RES_QP_MAPPED ;
 int atomic_dec (int *) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int qp_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_qp**,int ) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;

int mlx4_2RST_QP_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 int err;
 int qpn = vhcr->in_modifier & 0x7fffff;
 struct res_qp *qp;

 err = qp_res_start_move_to(dev, slave, qpn, RES_QP_MAPPED, &qp, 0);
 if (err)
  return err;
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto ex_abort;

 atomic_dec(&qp->mtt->ref_count);
 atomic_dec(&qp->rcq->ref_count);
 atomic_dec(&qp->scq->ref_count);
 if (qp->srq)
  atomic_dec(&qp->srq->ref_count);
 res_end_move(dev, slave, RES_QP, qpn);
 return 0;

ex_abort:
 res_abort_move(dev, slave, RES_QP, qpn);

 return err;
}
