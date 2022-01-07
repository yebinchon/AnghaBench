
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_eeprom {int page_valid; void* len; void* type; int module_num; int device_addr; int page_num; int i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_EEPROM_IDENTIFIER_BYTE_MASK ;
 int MLX5_EEPROM_INFO_BYTES ;
 int MLX5_EEPROM_PAGE_3_VALID_BIT_MASK ;
 int MLX5_EEPROM_REVISION_ID_BYTE_MASK ;
 void* MLX5_ETH_MODULE_SFF_8436 ;
 void* MLX5_ETH_MODULE_SFF_8436_LEN ;
 void* MLX5_ETH_MODULE_SFF_8472 ;
 void* MLX5_ETH_MODULE_SFF_8472_LEN ;
 void* MLX5_ETH_MODULE_SFF_8636 ;
 void* MLX5_ETH_MODULE_SFF_8636_LEN ;




 int mlx5_core_err (struct mlx5_core_dev*,char*,int,...) ;
 int mlx5_query_eeprom (struct mlx5_core_dev*,int ,int ,int ,int ,int ,int*,int*) ;
 int mlx5_query_module_num (struct mlx5_core_dev*,int *) ;
 int * sff_8024_id ;

int
mlx5_get_eeprom_info(struct mlx5_core_dev *dev, struct mlx5_eeprom *eeprom)
{
 u32 data = 0;
 int size_read = 0;
 int ret;

 ret = mlx5_query_module_num(dev, &eeprom->module_num);
 if (ret) {
  mlx5_core_err(dev, "Failed query module error=%d\n", ret);
  return (-ret);
 }


 ret = mlx5_query_eeprom(dev, eeprom->i2c_addr, eeprom->page_num,
     eeprom->device_addr, MLX5_EEPROM_INFO_BYTES, eeprom->module_num, &data,
     &size_read);
 if (ret) {
  mlx5_core_err(dev,
      "Failed query EEPROM module error=0x%x\n", ret);
  return (-ret);
 }

 switch (data & MLX5_EEPROM_IDENTIFIER_BYTE_MASK) {
 case 131:
  eeprom->type = MLX5_ETH_MODULE_SFF_8436;
  eeprom->len = MLX5_ETH_MODULE_SFF_8436_LEN;
  break;
 case 129:
 case 130:
  if ((data & MLX5_EEPROM_IDENTIFIER_BYTE_MASK) == 130 ||
      ((data & MLX5_EEPROM_REVISION_ID_BYTE_MASK) >> 8) >= 0x3) {
   eeprom->type = MLX5_ETH_MODULE_SFF_8636;
   eeprom->len = MLX5_ETH_MODULE_SFF_8636_LEN;
  } else {
   eeprom->type = MLX5_ETH_MODULE_SFF_8436;
   eeprom->len = MLX5_ETH_MODULE_SFF_8436_LEN;
  }
  if ((data & MLX5_EEPROM_PAGE_3_VALID_BIT_MASK) == 0)
   eeprom->page_valid = 1;
  break;
 case 128:
  eeprom->type = MLX5_ETH_MODULE_SFF_8472;
  eeprom->len = MLX5_ETH_MODULE_SFF_8472_LEN;
  break;
 default:
  mlx5_core_err(dev, "Not recognized cable type = 0x%x(%s)\n",
      data & MLX5_EEPROM_IDENTIFIER_BYTE_MASK,
      sff_8024_id[data & MLX5_EEPROM_IDENTIFIER_BYTE_MASK]);
  return (EINVAL);
 }
 return (0);
}
