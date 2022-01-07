
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_wq {unsigned int head; unsigned int tail; int last_poll; int wqe_cnt; TYPE_1__* w_list; int * wrid; } ;
struct mlx5_ib_qp {int ibqp; struct mlx5_ib_wq sq; } ;
struct ib_wc {int * qp; int vendor_err; int status; int wr_id; } ;
struct TYPE_2__ {int next; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int MLX5_CQE_SYNDROME_WR_FLUSH_ERR ;

__attribute__((used)) static void sw_send_comp(struct mlx5_ib_qp *qp, int num_entries,
    struct ib_wc *wc, int *npolled)
{
 struct mlx5_ib_wq *wq;
 unsigned int cur;
 unsigned int idx;
 int np;
 int i;

 wq = &qp->sq;
 cur = wq->head - wq->tail;
 np = *npolled;

 if (cur == 0)
  return;

 for (i = 0; i < cur && np < num_entries; i++) {
  idx = wq->last_poll & (wq->wqe_cnt - 1);
  wc->wr_id = wq->wrid[idx];
  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = MLX5_CQE_SYNDROME_WR_FLUSH_ERR;
  wq->tail++;
  np++;
  wc->qp = &qp->ibqp;
  wc++;
  wq->last_poll = wq->w_list[idx].next;
 }
 *npolled = np;
}
