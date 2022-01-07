
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_pages_req {int work; int npages; int func_id; struct mlx5_core_dev* dev; } ;
struct TYPE_2__ {int pg_wq; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
typedef int s32 ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct mlx5_pages_req* kzalloc (int,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int pages_work_handler ;
 int queue_work (int ,int *) ;

void mlx5_core_req_pages_handler(struct mlx5_core_dev *dev, u16 func_id,
     s32 npages)
{
 struct mlx5_pages_req *req;

 req = kzalloc(sizeof(*req), GFP_ATOMIC);
 if (!req) {
  mlx5_core_warn(dev, "failed to allocate pages request\n");
  return;
 }

 req->dev = dev;
 req->func_id = func_id;
 req->npages = npages;
 INIT_WORK(&req->work, pages_work_handler);
 if (!queue_work(dev->priv.pg_wq, &req->work))
  mlx5_core_warn(dev, "failed to queue pages handler work\n");
}
