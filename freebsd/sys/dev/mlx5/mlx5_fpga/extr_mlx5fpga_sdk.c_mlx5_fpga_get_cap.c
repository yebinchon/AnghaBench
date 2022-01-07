
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fpga_device {int state_lock; TYPE_2__* mdev; } ;
struct TYPE_3__ {int fpga; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int memcpy (int *,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_fpga_get_cap(struct mlx5_fpga_device *fdev, u32 *fpga_caps)
{
 unsigned long flags;

 spin_lock_irqsave(&fdev->state_lock, flags);
 memcpy(fpga_caps, &fdev->mdev->caps.fpga, sizeof(fdev->mdev->caps.fpga));
 spin_unlock_irqrestore(&fdev->state_lock, flags);
}
