
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;




 int MLX4_QPC_ROCE_MODE_1 ;
 int MLX4_QPC_ROCE_MODE_2 ;
 int MLX4_QPC_ROCE_MODE_UNDEFINED ;

__attribute__((used)) static u8 gid_type_to_qpc(enum ib_gid_type gid_type)
{
 switch (gid_type) {
 case 129:
  return MLX4_QPC_ROCE_MODE_1;
 case 128:
  return MLX4_QPC_ROCE_MODE_2;
 default:
  return MLX4_QPC_ROCE_MODE_UNDEFINED;
 }
}
