
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;

__attribute__((used)) static u16 to_fw_pkey_sz(struct mlx5_core_dev *dev, u32 size)
{
 switch (size) {
 case 128:
  return 0;
 case 256:
  return 1;
 case 512:
  return 2;
 case 1024:
  return 3;
 case 2048:
  return 4;
 case 4096:
  return 5;
 default:
  mlx5_core_warn(dev, "invalid pkey table size %d\n", size);
  return 0;
 }
}
