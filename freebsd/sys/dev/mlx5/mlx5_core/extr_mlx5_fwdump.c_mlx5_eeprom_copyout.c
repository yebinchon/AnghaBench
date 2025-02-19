
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eeprom_get {int * eeprom_info_buf; scalar_t__ eeprom_info_out_len; scalar_t__ eeprom_info_page_valid; } ;
struct mlx5_eeprom {int data; scalar_t__ len; scalar_t__ page_valid; int page_num; scalar_t__ device_addr; int i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_EEPROM_LOW_PAGE ;
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ;
 int MLX5_I2C_ADDR_LOW ;
 int M_MLX5_EEPROM ;
 int M_WAITOK ;
 int M_ZERO ;
 int copyout (int ,int *,scalar_t__) ;
 int free (int ,int ) ;
 int malloc (scalar_t__,int ,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int mlx5_get_eeprom (struct mlx5_core_dev*,struct mlx5_eeprom*) ;
 int mlx5_get_eeprom_info (struct mlx5_core_dev*,struct mlx5_eeprom*) ;

__attribute__((used)) static int
mlx5_eeprom_copyout(struct mlx5_core_dev *dev, struct mlx5_eeprom_get *eeprom_info)
{
 struct mlx5_eeprom eeprom;
 int error;

 eeprom.i2c_addr = MLX5_I2C_ADDR_LOW;
 eeprom.device_addr = 0;
 eeprom.page_num = MLX5_EEPROM_LOW_PAGE;
 eeprom.page_valid = 0;


 error = mlx5_get_eeprom_info(dev, &eeprom);
 if (error != 0) {
  mlx5_core_err(dev,
      "Failed reading EEPROM initial information\n");
  return (error);
 }
 eeprom_info->eeprom_info_page_valid = eeprom.page_valid;
 eeprom_info->eeprom_info_out_len = eeprom.len;

 if (eeprom_info->eeprom_info_buf == ((void*)0))
  return (0);




 eeprom.data = malloc(eeprom.len + MLX5_EEPROM_PAGE_LENGTH,
     M_MLX5_EEPROM, M_WAITOK | M_ZERO);


 error = mlx5_get_eeprom(dev, &eeprom);
 if (error != 0) {
  mlx5_core_err(dev, "Failed reading EEPROM error = %d\n",
      error);
  error = 0;




 }
 error = copyout(eeprom.data, eeprom_info->eeprom_info_buf,
     eeprom.len);
 free(eeprom.data, M_MLX5_EEPROM);

 return (error);
}
