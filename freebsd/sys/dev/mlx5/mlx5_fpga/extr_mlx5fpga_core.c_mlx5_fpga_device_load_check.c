
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_fpga_query {scalar_t__ image_status; int oper_image; int admin_image; } ;
struct mlx5_fpga_device {scalar_t__ image_status; int last_oper_image; int mdev; int last_admin_image; } ;


 int EIO ;
 scalar_t__ MLX5_CAP_FPGA (int ,scalar_t__) ;
 scalar_t__ MLX5_FPGA_MORSE ;
 scalar_t__ MLX5_FPGA_MORSEQ ;
 scalar_t__ MLX5_FPGA_STATUS_SUCCESS ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int,...) ;
 int mlx5_fpga_image_name (int ) ;
 int mlx5_fpga_info (struct mlx5_fpga_device*,char*,scalar_t__,int ,int ) ;
 int mlx5_fpga_query (int ,struct mlx5_fpga_query*) ;

__attribute__((used)) static int mlx5_fpga_device_load_check(struct mlx5_fpga_device *fdev)
{
 struct mlx5_fpga_query query;
 int err;
 u32 fpga_id;

 err = mlx5_fpga_query(fdev->mdev, &query);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to query status: %d\n", err);
  return err;
 }

 fdev->last_admin_image = query.admin_image;
 fdev->last_oper_image = query.oper_image;
 fdev->image_status = query.image_status;

 mlx5_fpga_info(fdev, "Status %u; Admin image %u; Oper image %u\n",
        query.image_status, query.admin_image, query.oper_image);


 fpga_id = MLX5_CAP_FPGA(fdev->mdev, fpga_id);
 if (fpga_id == MLX5_FPGA_MORSE || fpga_id == MLX5_FPGA_MORSEQ)
  return 0;

 if (query.image_status != MLX5_FPGA_STATUS_SUCCESS) {
  mlx5_fpga_err(fdev, "%s image failed to load; status %u\n",
         mlx5_fpga_image_name(fdev->last_oper_image),
         query.image_status);
  return -EIO;
 }

 return 0;
}
