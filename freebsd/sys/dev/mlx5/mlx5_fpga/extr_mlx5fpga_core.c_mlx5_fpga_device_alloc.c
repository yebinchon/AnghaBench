
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int client_data_list; int fdev_state; int load_event; int state_lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_FDEV_STATE_NONE ;
 int init_completion (int *) ;
 struct mlx5_fpga_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mlx5_fpga_device *mlx5_fpga_device_alloc(void)
{
 struct mlx5_fpga_device *fdev = ((void*)0);

 fdev = kzalloc(sizeof(*fdev), GFP_KERNEL);
 if (!fdev)
  return ((void*)0);

 spin_lock_init(&fdev->state_lock);
 init_completion(&fdev->load_event);
 fdev->fdev_state = MLX5_FDEV_STATE_NONE;
 INIT_LIST_HEAD(&fdev->client_data_list);
 return fdev;
}
