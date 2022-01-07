
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tool_addr {int dummy; } ;
struct mlx5_eeprom_get {int * eeprom_info_buf; scalar_t__ eeprom_info_out_len; struct mlx5_tool_addr devaddr; } ;
typedef int eeprom_info ;


 int ENOMEM ;
 int MLX5_EEPROM_GET ;
 scalar_t__ MLX5_EEPROM_PAGE_LENGTH ;
 int free (int *) ;
 int ioctl (int,int ,struct mlx5_eeprom_get*) ;
 int * malloc (scalar_t__) ;
 int memset (struct mlx5_eeprom_get*,int ,int) ;
 int mlx5tool_eeprom_print (struct mlx5_eeprom_get*) ;
 int warn (char*) ;

__attribute__((used)) static int
mlx5tool_get_eeprom_info(int ctldev, const struct mlx5_tool_addr *addr)
{
 struct mlx5_eeprom_get eeprom_info;
 int error;

 memset(&eeprom_info, 0, sizeof(eeprom_info));
 eeprom_info.devaddr = *addr;

 error = ioctl(ctldev, MLX5_EEPROM_GET, &eeprom_info);
 if (error != 0) {
  warn("MLX5_EEPROM_GET");
  return (error);
 }
 eeprom_info.eeprom_info_buf =
     malloc(eeprom_info.eeprom_info_out_len + MLX5_EEPROM_PAGE_LENGTH);
 if (eeprom_info.eeprom_info_buf == ((void*)0)) {
  warn("alloc eeprom_info.eeprom_info_buf ");
  return (ENOMEM);
 }
 error = ioctl(ctldev, MLX5_EEPROM_GET, &eeprom_info);
 if (error != 0) {
  warn("MLX5_EEPROM_GET");
  free(eeprom_info.eeprom_info_buf);
  return (error);
 }

 mlx5tool_eeprom_print(&eeprom_info);

 free(eeprom_info.eeprom_info_buf);
 return (0);
}
