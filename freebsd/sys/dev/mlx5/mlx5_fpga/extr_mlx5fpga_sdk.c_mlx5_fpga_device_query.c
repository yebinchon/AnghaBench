
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_query {int oper_image; int admin_image; int image_status; } ;
struct mlx5_fpga_device {int state_lock; int last_oper_image; int last_admin_image; int image_status; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_fpga_device_query(struct mlx5_fpga_device *fdev,
       struct mlx5_fpga_query *query)
{
 unsigned long flags;

 spin_lock_irqsave(&fdev->state_lock, flags);
 query->image_status = fdev->image_status;
 query->admin_image = fdev->last_admin_image;
 query->oper_image = fdev->last_oper_image;
 spin_unlock_irqrestore(&fdev->state_lock, flags);
}
