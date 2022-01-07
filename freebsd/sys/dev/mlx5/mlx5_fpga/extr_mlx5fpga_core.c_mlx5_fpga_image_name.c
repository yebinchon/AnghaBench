
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;





__attribute__((used)) static const char *mlx5_fpga_image_name(enum mlx5_fpga_image image)
{
 switch (image) {
 case 128:
  return "user";
 case 129:
  return "factory";
 default:
  return "unknown";
 }
}
