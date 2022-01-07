
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int dummy; } ;
struct ib_event_work {int port; int work; struct mlx4_ib_dev* ib_dev; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int ib_sl2vl_update_work ;
 struct ib_event_work* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int wq ;

void mlx4_sched_ib_sl2vl_update_work(struct mlx4_ib_dev *ibdev,
         int port)
{
 struct ib_event_work *ew;

 ew = kmalloc(sizeof(*ew), GFP_ATOMIC);
 if (ew) {
  INIT_WORK(&ew->work, ib_sl2vl_update_work);
  ew->port = port;
  ew->ib_dev = ibdev;
  queue_work(wq, &ew->work);
 } else {
  pr_err("failed to allocate memory for sl2vl update work\n");
 }
}
