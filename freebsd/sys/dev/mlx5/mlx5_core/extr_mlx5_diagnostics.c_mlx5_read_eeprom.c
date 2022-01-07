
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eeprom {int data; scalar_t__ len; scalar_t__ page_valid; int page_num; scalar_t__ device_addr; int i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_EEPROM_LOW_PAGE ;
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ;
 int MLX5_I2C_ADDR_LOW ;
 int M_MLX5_EEPROM ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (int ,int ) ;
 int malloc (scalar_t__,int ,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_get_eeprom (struct mlx5_core_dev*,struct mlx5_eeprom*) ;
 int mlx5_get_eeprom_info (struct mlx5_core_dev*,struct mlx5_eeprom*) ;

int
mlx5_read_eeprom(struct mlx5_core_dev *dev, struct mlx5_eeprom *eeprom)
{
 int error;

 eeprom->i2c_addr = MLX5_I2C_ADDR_LOW;
 eeprom->device_addr = 0;
 eeprom->page_num = MLX5_EEPROM_LOW_PAGE;
 eeprom->page_valid = 0;


 error = mlx5_get_eeprom_info(dev, eeprom);
 if (error) {
  mlx5_core_err(dev,
      "Failed reading EEPROM initial information\n");
  return (error);
 }




 eeprom->data = malloc(eeprom->len + MLX5_EEPROM_PAGE_LENGTH,
     M_MLX5_EEPROM, M_WAITOK | M_ZERO);


 error = mlx5_get_eeprom(dev, eeprom);
 if (error) {
  mlx5_core_err(dev, "Failed reading EEPROM\n");
  error = 0;




 }
 free(eeprom->data, M_MLX5_EEPROM);

 return (error);
}
