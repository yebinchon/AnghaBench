
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int wqe_cnt; int last_poll; TYPE_1__* w_list; } ;
struct mlx5_ib_qp {TYPE_2__ sq; } ;
struct mlx5_cqe64 {int dummy; } ;
struct TYPE_3__ {int next; } ;


 int handle_atomic (struct mlx5_ib_qp*,struct mlx5_cqe64*,int) ;

__attribute__((used)) static void handle_atomics(struct mlx5_ib_qp *qp, struct mlx5_cqe64 *cqe64,
      u16 tail, u16 head)
{
 u16 idx;

 do {
  idx = tail & (qp->sq.wqe_cnt - 1);
  handle_atomic(qp, cqe64, idx);
  if (idx == head)
   break;

  tail = qp->sq.w_list[idx].next;
 } while (1);
 tail = qp->sq.w_list[idx].next;
 qp->sq.last_poll = tail;
}
