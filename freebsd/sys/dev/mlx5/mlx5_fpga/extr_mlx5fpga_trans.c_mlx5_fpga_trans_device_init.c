
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_4__ {int tid; int list_item; } ;
struct TYPE_3__ {int lock; int free_queue; TYPE_2__* transactions; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

int mlx5_fpga_trans_device_init(struct mlx5_fpga_device *fdev)
{
 int ret = 0;
 int tid;

 fdev->trans = kzalloc(sizeof(*fdev->trans), GFP_KERNEL);
 if (!fdev->trans) {
  ret = -ENOMEM;
  goto out;
 }

 INIT_LIST_HEAD(&fdev->trans->free_queue);
 for (tid = 0; tid < ARRAY_SIZE(fdev->trans->transactions); tid++) {
  fdev->trans->transactions[tid].tid = tid;
  list_add_tail(&fdev->trans->transactions[tid].list_item,
         &fdev->trans->free_queue);
 }

 spin_lock_init(&fdev->trans->lock);

out:
 return ret;
}
