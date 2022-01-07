
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char const**) ;
 char const** mlx5_fpga_error_strings ;

__attribute__((used)) static const char *mlx5_fpga_syndrome_to_string(u8 syndrome)
{
 if (syndrome < ARRAY_SIZE(mlx5_fpga_error_strings))
  return mlx5_fpga_error_strings[syndrome];
 return "Unknown";
}
