
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_fpga_device {int fdev_state; int mdev; int state_lock; int load_event; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;






 int MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED ;
 int MLX5_GET (int ,void*,int) ;
 int complete (int *) ;
 int fpga_error_event ;
 int fpga_qp_error_event ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int,int,char const*) ;
 char* mlx5_fpga_qp_syndrome_to_string (int) ;
 char* mlx5_fpga_syndrome_to_string (int) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int,char const*) ;
 int mlx5_fpga_warn_ratelimited (struct mlx5_fpga_device*,char*,int,...) ;
 int mlx5_trigger_health_work (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_fpga_event(struct mlx5_core_dev *mdev, u8 event, void *data)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;
 const char *event_name;
 bool teardown = 0;
 unsigned long flags;
 u32 fpga_qpn;
 u8 syndrome;

 switch (event) {
 case 131:
  syndrome = MLX5_GET(fpga_error_event, data, syndrome);
  event_name = mlx5_fpga_syndrome_to_string(syndrome);
  break;
 case 130:
  syndrome = MLX5_GET(fpga_qp_error_event, data, syndrome);
  event_name = mlx5_fpga_qp_syndrome_to_string(syndrome);
  fpga_qpn = MLX5_GET(fpga_qp_error_event, data, fpga_qpn);
  mlx5_fpga_err(fdev, "Error %u on QP %u: %s\n",
         syndrome, fpga_qpn, event_name);
  break;
 default:
  mlx5_fpga_warn_ratelimited(fdev, "Unexpected event %u\n",
        event);
  return;
 }

 spin_lock_irqsave(&fdev->state_lock, flags);
 switch (fdev->fdev_state) {
 case 128:
  mlx5_fpga_warn(fdev, "Error %u: %s\n", syndrome, event_name);
  teardown = 1;
  break;
 case 129:
  if (syndrome != MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED)
   mlx5_fpga_warn(fdev, "Error while loading %u: %s\n",
           syndrome, event_name);
  complete(&fdev->load_event);
  break;
 default:
  mlx5_fpga_warn_ratelimited(fdev, "Unexpected error event %u: %s\n",
        syndrome, event_name);
 }
 spin_unlock_irqrestore(&fdev->state_lock, flags);





 if (teardown)
  mlx5_trigger_health_work(fdev->mdev);
}
